import 'package:midterm_practical/views/game_page.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  final int score;

  GameOver({
    this.score = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('GAME OVER!',
                style: TextStyle(
                    color: Color(0xfff9f9f9),
                    fontSize: 50.0,
                    fontFamily: 'PoppinsBold',
                    shadows: [
                      Shadow(
                          // bottomLeft
                          offset: Offset(-1.5, -1.5),
                          color: Colors.black),
                      Shadow(
                          // bottomRight
                          offset: Offset(1.5, -1.5),
                          color: Colors.black),
                      Shadow(
                          // topRight
                          offset: Offset(1.5, 1.5),
                          color: Colors.black),
                      Shadow(
                          // topLeft
                          offset: Offset(-1.5, 1.5),
                          color: Colors.black),
                    ])),
            SizedBox(height: 50.0),
            Text('Your Score is: $score',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Poppins')),
            SizedBox(height: 50.0),
            TextButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => GamePage()));
              },
              icon: Icon(Icons.refresh, color: Color(0xff000000), size: 30.0),
              label: Text("TRY AGAIN 😭",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20.0,
                      fontFamily: 'PoppinsBold')),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color(0xffffffff).withOpacity(0.5)),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
