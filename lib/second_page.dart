import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.yellow,
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}
