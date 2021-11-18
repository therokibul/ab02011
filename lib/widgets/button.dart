import 'package:flutter/material.dart';
import 'package:ab02011/main.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.routeName,
    required this.btnName,
  }) : super(key: key);
  final VoidCallback routeName;
  final String btnName;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: routeName,
      color: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minWidth: 300,
      child: Text(' $btnName Button'),
    );
  }
}
