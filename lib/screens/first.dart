import 'package:ab02011/widgets/appbar.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}