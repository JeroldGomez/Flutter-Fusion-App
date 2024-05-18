import 'package:flutter/material.dart';
import 'route/route.dart' as route;

import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:midterm_practical/app/provider/theme_provider.dart';
import 'package:midterm_practical/app/provider/sound_provider.dart';
import 'package:midterm_practical/app/provider/appinfo_provider.dart';
// import 'package:midterm_practical/puzzlemain.dart';

void main() {
  /// For disabling [landscape] view in mobile & tablet devices
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => SoundProvider()),
        Provider(create: (_) => AppInfoProvider()),
      ],
      child: ColorBettingGame(),
    ),
  );
}

// void main() {
//   runApp(ColorBettingGame());
// }

class ColorBettingGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Betting Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.loginPageRoute,
      // initialRoute: route.snakegamePageRoute,
    );
  }
}
