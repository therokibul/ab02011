import 'dart:js';

import 'package:ab02011/views/home_desktop.dart';
import 'package:ab02011/views/home_mobile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 600) {
        return HomeMobile();
      } else {
        return HomeDesktop();
      }
    }));
  }
}
