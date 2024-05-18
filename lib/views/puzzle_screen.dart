// my_puzzle_screen.dart

import 'package:flutter/material.dart';
import 'package:midterm_practical/app/view/puzzle_game.dart';

class MyPuzzleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puzzle Screen'),
      ),
      body: PuzzleGame(),
    );
  }
}
