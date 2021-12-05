import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String equation = '0';
  String result = '0';
  String expresstion = '';
  double equationFontSize = 50;
  double resultFontSize = 40;

  buttonOnPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        equationFontSize = 50;
        resultFontSize = 40;
        equation = '0';
        result = '0';
      } else if (buttonText == '←') {
        equationFontSize = 50;
        resultFontSize = 40;
        equation = equation.substring(0, equation.length - 1);
        if (equation == '') {
          equation = '0';
        }
      } else if (buttonText == '=') {
        equationFontSize = 40;
        resultFontSize = 50;
        expresstion = equation;
        expresstion = expresstion.replaceAll('÷', '/');
        expresstion = expresstion.replaceAll('×', '*');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expresstion);
          ContextModel cm = ContextModel();

          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = 'Error';
        }
      } else {
        equationFontSize = 50;
        resultFontSize = 40;
        if (equation == '0') {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  Widget buildButton(
    String buttonText,
    double buttonHeight,
    Color buttonColor,
  ) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(24)),
      child: MaterialButton(
        onPressed: () {
          buttonOnPressed(buttonText);
        },
        padding: EdgeInsets.all(16),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff17171C),
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Color(0xff17171C),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              equation,
              style: TextStyle(
                color: Colors.white,
                fontSize: equationFontSize,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              result,
              style: TextStyle(
                color: Colors.white,
                fontSize: resultFontSize,
              ),
            ),
          ),
          Expanded(child: Divider()),
          Row(
            children: [
              Container(
                width: screenSize.width * 0.75,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton('C', 1, Color(0xff4E505F)),
                      buildButton('←', 1, Color(0xff4E505F)),
                      buildButton('÷', 1, Color(0xff4E505F)),
                    ]),
                    TableRow(children: [
                      buildButton('7', 1, Color(0xff2E2F38)),
                      buildButton('8', 1, Color(0xff2E2F38)),
                      buildButton('9', 1, Color(0xff2E2F38)),
                    ]),
                    TableRow(children: [
                      buildButton('4', 1, Color(0xff2E2F38)),
                      buildButton('5', 1, Color(0xff2E2F38)),
                      buildButton('6', 1, Color(0xff2E2F38)),
                    ]),
                    TableRow(children: [
                      buildButton('1', 1, Color(0xff2E2F38)),
                      buildButton('2', 1, Color(0xff2E2F38)),
                      buildButton('3', 1, Color(0xff2E2F38)),
                    ]),
                    TableRow(children: [
                      buildButton('.', 1, Color(0xff2E2F38)),
                      buildButton('0', 1, Color(0xff2E2F38)),
                      buildButton('00', 1, Color(0xff2E2F38)),
                    ]),
                  ],
                ),
              ),
              Container(
                  width: screenSize.width * 0.25,
                  child: Table(
                    children: [
                      TableRow(
                          children: [buildButton('×', 1, Color(0xff4B5EFC))]),
                      TableRow(
                          children: [buildButton('-', 1, Color(0xff4B5EFC))]),
                      TableRow(
                          children: [buildButton('+', 1, Color(0xff4B5EFC))]),
                      TableRow(
                          children: [buildButton('=', 2.2, Color(0xff4B5EFC))]),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
