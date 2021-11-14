import 'package:flutter/material.dart';
import 'package:ab02011/main.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
   
  }) : super(key: key);


  @override
  _CustomButtonState createState() => _CustomButtonState();
}



class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minWidth: 300,
      child: Text(' Button'),
    );
  }
}
