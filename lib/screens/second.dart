import 'package:ab02011/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
    );
  }
}