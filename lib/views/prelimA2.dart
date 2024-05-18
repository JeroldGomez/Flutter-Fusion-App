import 'package:flutter/material.dart';
import 'package:midterm_practical/views/drawer.dart';

class MyPrelimA2 extends StatefulWidget {
  const MyPrelimA2({Key? key}) : super(key: key);

  @override
  State<MyPrelimA2> createState() => _MyPrelimA2State();
}

class _MyPrelimA2State extends State<MyPrelimA2> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff2f8886), // Background
        title: Center(
          child: Text('Gomez Program',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontFamily: 'Pacifico')),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              child: Image.asset(
                'assets/images/appW.png',
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff2F3E46),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff52796F),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xffCAD2C5), width: 4),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff52796F),
                  offset: Offset(6.0, 6.0) // Set shadow color
                  ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Jerold Gomez',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontFamily: 'Press Start 2P',
                    color: Color(0xffCAD2C5),
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 2.0,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'BSCS 3 - 1\nCity College of Tagaytay\n0967-284-1012',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Color(0xffD8F3DC)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Center(child: Icon(Icons.thumb_up)), //Center
          backgroundColor:
              Color(0xff2f8886) // this color should be theme color with AppBar
          ),
    );
  }
}
