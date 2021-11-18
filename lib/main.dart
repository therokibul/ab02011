import 'dart:js';

import 'package:ab02011/desktopscreen.dart';
import 'package:ab02011/moblescreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Layout(),
    );
  }
}

class Layout extends StatelessWidget {
  const Layout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return MobileScreen();
          } else {
            return DesktopScreen();
          }
        },
      
      );
  }
}
