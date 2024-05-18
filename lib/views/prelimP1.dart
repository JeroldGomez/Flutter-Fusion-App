import 'package:flutter/material.dart';
import 'package:midterm_practical/views/drawer.dart';

class MyPrelimP1 extends StatefulWidget {
  const MyPrelimP1({Key? key}) : super(key: key);

  @override
  State<MyPrelimP1> createState() => _MyPrelimP1State();
}

class _MyPrelimP1State extends State<MyPrelimP1> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff2f8886), // Background
        // The title text which will be shown on the action bar
        title: Center(
          child: Text('Gomez Program 1',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontFamily: 'Gochi Hand')),
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
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(height: 675, width: 411),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.green // Set shadow color
                  ),
            ],
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              constraints: BoxConstraints.expand(height: 630, width: 360),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.red, width: 4),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(6.0, 6.0) // Set shadow color
                      ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                constraints: BoxConstraints.expand(height: 580, width: 310),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 4),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue,
                        offset: Offset(6.0, 6.0) // Set shadow color
                        ),
                  ],
                ),
                child: Image.asset('assets/images/gomez-jerold-image-2.jpg',
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Center(child: Icon(Icons.camera)), //Center
          backgroundColor:
              Color(0xff2f8886) // this color should be theme color with AppBar
          ),
    );
  }
}
