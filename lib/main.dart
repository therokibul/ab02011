import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => FirstPage(), 
        MyRoute.firstPage: (contex) => FirstPage(),
        MyRoute.secondPage: (contex) => SecondPage(),
      },
    );
  }
}

class MyRoute{
  static String firstPage = '/first';
  static String secondPage = '/second';
}