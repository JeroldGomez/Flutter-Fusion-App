import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'app/view/puzzle_game.dart';
import 'package:provider/provider.dart';
import 'app/provider/theme_provider.dart';

class MyPuzzle extends StatefulWidget {
  const MyPuzzle({Key? key}) : super(key: key);

  @override
  State<MyPuzzle> createState() => _MyPuzzleState();
}

class _MyPuzzleState extends State<MyPuzzle> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Puzzle Hack',
          debugShowCheckedModeBanner: false,
          theme:
              themeProvider.darkTheme ? MyTheme.darkTheme : MyTheme.lightTheme,
          builder: (context, widget) => ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, widget!),

            /// These [Breakpoints] represents the width of the device,
            /// is is using `responsive_framework` package
            breakpoints: [
              const ResponsiveBreakpoint.resize(350, name: 'ExSmall'),
              const ResponsiveBreakpoint.resize(480, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
              const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
            ],
          ),

          /// This [ResponsiveSizer] is for Making the Puzzle Game
          /// board `responsive`
          ///
          home: ResponsiveSizer(
            builder: (context, orientation, screenType) {
              return const PuzzleGame();
            },
          ),
        );
      },
    );
  }
}
