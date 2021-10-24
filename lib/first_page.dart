import 'package:ab02011/main.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.green,
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoute.secondPage);
          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}
