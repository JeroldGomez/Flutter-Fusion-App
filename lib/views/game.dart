import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:midterm_practical/route/route.dart' as route;
import 'package:midterm_practical/views/drawer.dart';

class BettingScreen extends StatefulWidget {
  @override
  _BettingScreenState createState() => _BettingScreenState();
}

class _BettingScreenState extends State<BettingScreen> {
  int capital = 100;
  int currentBet = 0;
  String result = '';

  final List<Color> colors = [
    Color(0xffe8d736),
    Color(0xfff697b6),
    Colors.white,
    Colors.blue,
    Colors.red,
    Colors.green
  ];

  final Random random = Random();
  List<Color> selectedColors = List.filled(3, Colors.transparent);
  Color selectedColor = Colors.transparent;
  TextEditingController betController = TextEditingController();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  Set<Color> selectedColorsSet = {};

  void toggleColorSelection(Color color) {
    setState(() {
      if (selectedColorsSet.contains(color)) {
        selectedColorsSet.remove(color); // Remove color if already selected
      } else {
        selectedColorsSet.add(color); // Add color if not already selected
      }
    });
  }

  @override
  void dispose() {
    betController.dispose();
    super.dispose();
  }

  bool diceRolled = false;

  void placeBet() {
    setState(() {
      int betAmount = int.tryParse(betController.text) ?? 0;
      if (betAmount <= capital &&
          betAmount > 0 &&
          selectedColorsSet.isNotEmpty) {
        capital -= betAmount * selectedColorsSet.length;
        currentBet = betAmount;
        result = '';
        rollDice();
      } else {
        result = 'Invalid Bet or No Color Selected!';
      }
    });
  }

  void rollDice() {
    if (currentBet > 0 && !diceRolled) {
      setState(() {
        diceRolled = true;
        result = '';
      });

      List<Color> rolledColors =
          List.generate(3, (index) => colors[random.nextInt(colors.length)]);

      Future.delayed(Duration(milliseconds: 250), () {
        setState(() {
          selectedColors = rolledColors;
          Map<Color, int> colorCounts = {};

          for (var color in rolledColors) {
            colorCounts[color] = (colorCounts[color] ?? 0) + 1;
          }

          int totalWinnings = 0;
          int totalLoss = 0;

          for (var selectedColor in selectedColorsSet) {
            int countSelectedColor = colorCounts[selectedColor] ?? 0;

            if (countSelectedColor == 3) {
              capital += currentBet * 4;
              totalWinnings +=
                  currentBet * 3; // Track total winnings for this color
            } else if (countSelectedColor == 2) {
              capital += currentBet * 3;
              totalWinnings +=
                  currentBet * 2; // Track total winnings for this color
            } else if (countSelectedColor == 1) {
              capital += currentBet * 2;
              totalWinnings +=
                  currentBet; // Track total winnings for this color
            } else {
              totalLoss +=
                  currentBet; // Accumulate the total loss for this color
            }
          }

          int netOutcome = totalWinnings - totalLoss;

          if (netOutcome > 0) {
            result = 'YOU WON! +₱$netOutcome';
          } else if (netOutcome < 0) {
            result = 'YOU LOST! -₱${netOutcome.abs()}';
            showLosePopup(); // Show lose popup when user runs out of coins
          } else {
            result = 'No Gain, No Loss';
          }

          diceRolled = false;
        });
      });
    } else {
      setState(() {
        result = 'Place a valid bet before rolling the dice!';
      });
    }
  }

  void resetGame() {
    setState(() {
      capital = 100;
      currentBet = 0;
      result = '';
      selectedColors = List.filled(3, Colors.transparent);
      selectedColor = Colors.transparent;
      betController.clear();
      diceRolled = false; // If diceRolled is used in the reset logic
    });
  }

  void resetDice() {
    setState(() {
      currentBet = 0;
      result = '';
      selectedColors = List.filled(3, Colors.transparent);
      selectedColor = Colors.transparent;
      betController.clear();
      diceRolled = false; // If diceRolled is used in the reset logic
    });
  }

  void showLosePopup() {
    if (capital <= 0) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(15.0), // Set the border radius here
            ),
            backgroundColor: Color(0xff1C222F), // Set dialog background color
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: 5), // Adjust left padding here
                        child: Text(
                          'Out of Coins',
                          style: TextStyle(
                            color: Color(0xfff14134), // Set title text color
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Image.asset(
                          'assets/images/loss.png', // Replace with your icon asset path
                          width: 40, // Set width of the icon
                          height: 40,
                        ),
                      )
                      // Set height of the icon
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Oops! You have run out of coins.',
                        style: TextStyle(
                            color: Color(0xffd7d7d7), // Set content text color
                            fontSize: 16,
                            fontFamily: 'Poppins'),
                      ),
                      Text(
                        'Would you like to restart the game?',
                        style: TextStyle(
                            color: Color(0xffd7d7d7), // Set content text color
                            fontSize: 16,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 12.0), // Set margin for the first button
                        child: TextButton(
                          onPressed: () {
                            resetGame();
                            Navigator.of(context).pop();
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 31, vertical: 10),
                            child: Text(
                              'Restart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffF45170),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust border radius
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 12.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, route.navPageRoute);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 35, vertical: 10),
                            child: Text(
                              'Close',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffF45170),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust border radius
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MainDrawer(),
      backgroundColor: Color(0xff1C222F),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bg_square_bw_3d.png'), // Replace with your image path
            fit: BoxFit.cover, // Adjust the fit as needed
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),

            Container(
              width: 395,
              height: 60,
              margin: EdgeInsets.only(bottom: 20, top: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/tcbg.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Image.asset(
                      'assets/images/casino-chip.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0, left: 10),
                    child: Text(
                      'GambleGames',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Vina Sans',
                          color: Color(0xffd7d7d7)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.0, bottom: 20),
                    child: Image.asset(
                      'assets/images/poker-chip.png',
                      width: 10,
                      height: 10,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        _scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Image.asset(
                        'assets/images/menu1.png',
                        width: 27,
                        height: 27,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            // SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(bottom: 20.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: selectedColors
                    .map((color) => AnimatedContainer(
                          duration: Duration(milliseconds: 250),
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ))
                    .toList(),
              ),
            ),
            SizedBox(height: 50),
            // SizedBox(height: 10),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10.0, left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    result,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Lilita One',
                        color: Color(0xffd7d7d7)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.0, left: 8),
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xff3a4150),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Image.asset(
                            'assets/images/philippine-peso.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.0),
                          child: Text(
                            ' $capital',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Vina Sans',
                                color: Color(0xffd7d7d7)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 0, left: 8),
                        decoration: BoxDecoration(
                          color: Color(0xff3a4150),
                          borderRadius: BorderRadius.circular(
                              4), // Optional: Add border radius
                        ),
                        width: 150,
                        height: 43,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0, right: 8.0),
                              child: Image.asset(
                                'assets/images/bet.png',
                                width: 30,
                                height: 30,
                              ),
                            ), // Adding space between the image and TextField
                            Expanded(
                              child: TextField(
                                controller: betController,
                                keyboardType: TextInputType.number,
                                style: TextStyle(
                                  color: Color(0xffd7d7d7),
                                  fontFamily: 'Vina Sans',
                                  fontSize: 30.0,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Bet Amount',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 14.0),
                                  hintStyle: TextStyle(
                                    fontFamily: 'Vina Sans',
                                    fontSize: 23.0,
                                    color: Color(0xffd7d7d7),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 43,
                        height: 43,
                        margin: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          color: selectedColor,
                          borderRadius: BorderRadius.circular(
                              7), // Set the border radius value as per your requirement
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: colors
                  .map((color) => GestureDetector(
                        onTap: () {
                          if (!diceRolled) {
                            toggleColorSelection(color);
                          } else {
                            setState(() {
                              result =
                                  'Cannot place a bet while the dice is rolling!';
                            });
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(10),
                            border: selectedColorsSet.contains(color)
                                ? Border.all(color: Color(0xff545AF7), width: 3)
                                : null, // Add black border if the color is selected
                          ),
                          margin: EdgeInsets.all(3),
                        ),
                      ))
                  .toList(),
            ),
            Container(
                margin: EdgeInsets.only(top: 9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: placeBet,
                      child: Text(
                        'Roll',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Vina Sans',
                            color: Color(0xffe1e1e1)),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 70),
                        backgroundColor: Color(0xff3a4150),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: resetDice,
                      child: Text(
                        'Reset',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Vina Sans',
                            color: Color(0xffe1e1e1)),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 25, horizontal: 70),
                          backgroundColor: Color(0xff3a4150) // Adjust padding
                          ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
