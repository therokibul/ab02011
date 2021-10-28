import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white70,
        fontFamily: 'IrishGrover',
        primaryColor: Colors.purple,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 40),
          
        )
        
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => FirstPage(),
        MyRoute.firstPage: (contex) => FirstPage(),
        MyRoute.secondPage: (contex) => SecondPage(),
      },
    );
  }
}

class MyRoute {
  static String firstPage = '/first';
  static String secondPage = '/second';
}
