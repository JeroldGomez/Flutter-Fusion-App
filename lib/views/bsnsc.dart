import 'package:flutter/material.dart';
import 'package:midterm_practical/views/drawer.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MainDrawer(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg_gradient_2.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 25, top: 20),
                  child: Row(
                    children: [
                      Text(
                        '',
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
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
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: CircleAvatar(
                    radius: 85.0,
                    backgroundImage:
                        AssetImage('assets/images/gomez_jerold_image1.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Jerold Gomez',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Blox Brk',
                          color: Color(0xffd7d7d7),
                          letterSpacing: 1.0),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 7),
                    child: Text(
                      'BSCS 3-1',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Montserrat',
                          color: Color(0xff7a7a7a),
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/card_bg.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.phone, color: Colors.black),
                                SizedBox(width: 20.0),
                                Text(
                                  '0967 284 1012',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'Montserrat',
                                    color: Color(0xff272727),
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/card_bg.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.mail, color: Colors.black),
                                SizedBox(width: 20.0),
                                Text(
                                  'jerold.gomez@citycollegeoftagaytay.edu.ph',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Montserrat',
                                    color: Color(0xff272727),
                                    // letterSpacing: 3.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/card_bg.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Icon(Icons.link_rounded, color: Colors.black),
                                SizedBox(width: 20.0),
                                Text(
                                  'JeroldGomez',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'Montserrat',
                                    color: Color(0xff272727),
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
