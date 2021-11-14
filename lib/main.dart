
import 'package:ab02011/screens/first.dart';
import 'package:ab02011/screens/second.dart';
import 'package:ab02011/screens/third.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     
        initialRoute: "/",
        routes: {
          "/": (contex) => Home(),
          MyRoute.firstRoute: (contex) => First(),
          MyRoute.secondRoute: (contex) => Second(),
          MyRoute.thirdtRoute: (contex) => Third(),
        });
  }
}



class MyRoute {
  static String firstRoute = '/first';
  static String secondRoute = '/second';
  static String thirdtRoute = '/second';
}
