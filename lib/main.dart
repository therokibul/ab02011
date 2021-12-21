import 'package:ab02011/pages/home.dart';
import 'package:ab02011/pages/second.dart';
import 'package:ab02011/pages/third.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      getPages: [
        GetPage(
          name: "/home",
          page: () => Home(),
        ),
        GetPage(
          name: "/second",
          page: () => Second(),
        ),
        GetPage(
          name: "/third",
          page: () => Third(),
        ),
      ],
    );
  }
}
