import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:midterm_practical/views/drawer.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  String _input = '';
  String _output = '';

  void _onButtonPressed(String value) {
    setState(() {
      if (value == '=') {
        _output = _calculateResult();
      } else if (value == 'C') {
        _input = '';
        _output = '';
      } else {
        _input += value;
      }
    });
  }

  String _calculateResult() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(_input);
      ContextModel cm = ContextModel();
      return exp.evaluate(EvaluationType.REAL, cm).toString();
    } catch (e) {
      return 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff1B263B),
        title: Center(
          child: Text('Calculator',
              style: TextStyle(fontFamily: 'PoppinsSemiBold')),
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
      backgroundColor: Color(0xff0D1B2A), // Set the background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 200,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xffb5b5b5).withOpacity(0.9), // Set the box color
              // Set the box color
              // border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              _input,
              style: TextStyle(fontSize: 24, fontFamily: 'PoppinsSemiBold'),
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: 200,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xffb5b5b5).withOpacity(0.9), // Set the box color
              // border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              _output,
              style: TextStyle(fontSize: 32, fontFamily: 'PoppinsBold'),
            ),
          ),
          SizedBox(height: 16),
          CalculatorButtons(onPressed: _onButtonPressed),
        ],
      ),
    );
  }
}

class CalculatorButtons extends StatefulWidget {
  final Function(String) onPressed;

  CalculatorButtons({required this.onPressed});

  @override
  _CalculatorButtonsState createState() => _CalculatorButtonsState();
}

class _CalculatorButtonsState extends State<CalculatorButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton('7'),
            _buildButton('8'),
            _buildButton('9'),
            _buildButton('/'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton('4'),
            _buildButton('5'),
            _buildButton('6'),
            _buildButton('*'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton('1'),
            _buildButton('2'),
            _buildButton('3'),
            _buildButton('-'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButton('0'),
            _buildButton('C'),
            _buildButton('='),
            _buildButton('+'),
          ],
        ),
      ],
    );
  }

  Widget _buildButton(String text) {
    return Container(
      margin: EdgeInsets.all(4),
      child: ElevatedButton(
        onPressed: () => widget.onPressed(text),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.only(left: 35, right: 35, top: 20, bottom: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            // side: BorderSide(color: Colors.black),
          ),
          primary: Color(0xff415A77),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 24, fontFamily: 'PoppinsSemiBold'),
        ),
      ),
    );
  }
}
