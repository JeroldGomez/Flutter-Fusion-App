import 'package:midterm_practical/views/game_page.dart';
import 'package:flutter/material.dart';
import 'package:midterm_practical/views/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MainDrawer(),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff171717),
      //   title: Center(
      //     child: Text('',
      //         style: TextStyle(
      //             color: Color(0xffffffff),
      //             fontSize: 17.0,
      //             fontFamily: 'Press Start 2P')),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.only(right: 20.0),
      //       child: GestureDetector(
      //         onTap: () {
      //           _scaffoldKey.currentState!.openEndDrawer();
      //         },
      //         child: Image.asset(
      //           'assets/images/appW.png',
      //           width: 30,
      //           height: 30,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bg_square_bw.png'), // Replace with your image path
            fit: BoxFit.cover, // Adjust the fit as needed
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   right: 0,
            //   child: Padding(
            //     padding: EdgeInsets.only(left: 20, right: 25, top: 20),
            //     child: Row(
            //       children: [
            //         Text(
            //           '',
            //         ),
            //         Spacer(),
            //         Padding(
            //           padding: EdgeInsets.only(top: 20),
            //           child: GestureDetector(
            //             onTap: () {
            //               _scaffoldKey.currentState!.openEndDrawer();
            //             },
            //             child: Image.asset(
            //               'assets/images/appW.png',
            //               width: 30,
            //               height: 30,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Image.asset('assets/images/snake_game.jpg'),
            SizedBox(height: 100.0),
            Padding(
              padding: EdgeInsets.only(left: 43),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/snakeN.gif',
                    width: 50,
                    height: 50,
                  ),
                  // Spacer(),
                  // Text(''),
                ],
              ),
            ),
            Text(
              'SNAKE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60.0,
                  fontFamily: 'Press Start 2P'),
              textAlign: TextAlign.center,
            ),
            // SizedBox(height: 3),
            Text(
              'GAME',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontFamily: 'PoppinsBold'),
              // textAlign: TextAlign.center,
            ),
            SizedBox(height: 200.0),
            TextButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => GamePage()));
              },
              icon: Icon(Icons.play_circle_filled,
                  color: Color(0xff000000), size: 30.0),
              label: Text("PLAY",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 18.0,
                      fontFamily: 'Press Start 2P')),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0)),
                backgroundColor: MaterialStateProperty.all(
                    Color(0xffffffff).withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
