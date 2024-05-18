import 'package:flutter/material.dart';
import 'package:midterm_practical/views/drawer.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:midterm_practical/route/route.dart' as route;

class MyPiano extends StatefulWidget {
  const MyPiano({Key? key}) : super(key: key);

  @override
  State<MyPiano> createState() => _MyPianoState();
}

class _MyPianoState extends State<MyPiano> {
  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {
        final AudioCache player = new AudioCache();
        player.play('sounds/note$soundNumber.wav');
      },
      style: ElevatedButton.styleFrom(
        primary: color,
      ),
      child: Text(''),
    ));
  }

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        endDrawer: MainDrawer(),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: Color(0xff1B263B),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Color(0xff577590), soundNumber: 1),
                buildKey(color: Color(0xff43AA8B), soundNumber: 2),
                buildKey(color: Color(0xff90BE6D), soundNumber: 3),
                buildKey(color: Color(0xffF9C74F), soundNumber: 4),
                buildKey(color: Color(0xffF8961E), soundNumber: 5),
                buildKey(color: Color(0xffF3722C), soundNumber: 6),
                buildKey(color: Color(0xffF94144), soundNumber: 7),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
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
            ),
          ],
        ));
  }
}
