import 'package:flutter/material.dart';
// importing our pages into our route.dart
import 'package:midterm_practical/views/game.dart';
import 'package:midterm_practical/views/login.dart';
import 'package:midterm_practical/views/nav.dart';
import 'package:midterm_practical/views/xyl.dart';
import 'package:midterm_practical/views/bsnsc.dart';
import 'package:midterm_practical/views/prelimP2.dart';
import 'package:midterm_practical/views/prelimP1.dart';
import 'package:midterm_practical/views/prelimA2.dart';
import 'package:midterm_practical/views/details.dart';
import 'package:midterm_practical/views/calculator.dart';
import 'package:midterm_practical/views/todolist.dart';
import 'package:midterm_practical/views/home_page.dart';
import 'package:midterm_practical/views/tetrismain.dart';
import 'package:midterm_practical/puzzlemain.dart';

// variable for our route names
const String loginPageRoute = 'login';
const String gamePageRoute = 'game';
const String navPageRoute = 'nav';
const String xylophonePageRoute = 'xyl';
const String businessPageRoute = 'bsn';
const String prelimP2PageRoute = 'pP2';
const String prelimP1PageRoute = 'pP1';
const String prelimA2PageRoute = 'pA2';
const String detailsPageRoute = 'dtl';
const String calculatorPageRoute = 'cal';
const String todolistPageRoute = 'tdl';
const String snakegamePageRoute = 'sng';
const String tetrisPageRoute = 'trt';
const String puzzlePageRoute = 'pzl';

void login() {}
// controller function with switch statement to control page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case loginPageRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case gamePageRoute:
      return MaterialPageRoute(builder: (context) => BettingScreen());
    case navPageRoute:
      return MaterialPageRoute(builder: (context) => NavBar());
    case xylophonePageRoute:
      return MaterialPageRoute(builder: (context) => MyPiano());
    case businessPageRoute:
      return MaterialPageRoute(builder: (context) => BusinessCard());
    case prelimP2PageRoute:
      return MaterialPageRoute(builder: (context) => RandomWords());
    case prelimP1PageRoute:
      return MaterialPageRoute(builder: (context) => MyPrelimP1());
    case prelimA2PageRoute:
      return MaterialPageRoute(builder: (context) => MyPrelimA2());
    case detailsPageRoute:
      return MaterialPageRoute(builder: (context) => MyDetails());
    case calculatorPageRoute:
      return MaterialPageRoute(builder: (context) => CalculatorScreen());
    case todolistPageRoute:
      return MaterialPageRoute(builder: (context) => TodoList());
    case snakegamePageRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case tetrisPageRoute:
      return MaterialPageRoute(builder: (context) => MyTetris());
    case puzzlePageRoute:
      return MaterialPageRoute(builder: (context) => MyPuzzle());
    default:
      throw ('this route name does not exist');
  }
}
