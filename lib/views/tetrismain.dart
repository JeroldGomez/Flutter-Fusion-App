import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:midterm_practical/views/gamer/gamer.dart';
import 'package:midterm_practical/views/generated/l10n.dart';
import 'package:midterm_practical/views/material/audios.dart';
import 'package:midterm_practical/views/panel/page_portrait.dart';
// import 'package:midterm_practical/views/drawer.dart';

import 'gamer/keyboard.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  _disableDebugPrint();
  runApp(MyTetris());
}

void _disableDebugPrint() {
  bool debug = false;
  assert(() {
    debug = true;
    return true;
  }());
  if (!debug) {
    debugPrint = (message, {wrapWidth}) {
      //disable log print when not in debug mode
    };
  }
}

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

class MyTetris extends StatefulWidget {
  const MyTetris({Key? key}) : super(key: key);

  @override
  State<MyTetris> createState() => _MyTetrisState();
}

class _MyTetrisState extends State<MyTetris> {
  // GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tetris',
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      navigatorObservers: [routeObserver],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // key: _scaffoldKey,
        // endDrawer: MainDrawer(),
        // appBar: AppBar(
        //   backgroundColor: Color(0xffF77F00),
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     onPressed: () {
        //       // Navigate back when the back button is pressed
        //       Navigator.of(context).pop();
        //     },
        //   ),
        //   title: Text('TETRIS',
        //       style: TextStyle(
        //         fontFamily: 'Press Start 2P',
        //         fontSize: 15,
        //       )),
        //   actions: [
        //     IconButton(
        //       icon: Icon(Icons.menu),
        //       color: Colors.transparent, // Set the color to transparent
        //       onPressed: () {
        //         // Add your menu icon onPressed logic here
        //       },
        //     ),
        //   ],
        // ),
        body: Sound(child: Game(child: KeyboardController(child: _HomePage()))),
      ),
    );
  }
}

const SCREEN_BORDER_WIDTH = 3.0;

const BACKGROUND_COLOR = const Color(0xff003049);

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //only Android/iOS support land mode
    bool land = MediaQuery.of(context).orientation == Orientation.landscape;
    return land ? PageLand() : PagePortrait();
  }
}
