import 'dart:js';

import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var secreenSize = MediaQuery.of(context).size;
    var secreenWidth = secreenSize.width;
    var secreenHeigth = secreenSize.height;
    return Center(
        child: Container(
          width: secreenWidth * 0.8,
          height: secreenHeigth * 0.5,
          constraints: BoxConstraints(
            maxWidth: 700,
            minWidth: 400,
          ),
          color: Colors.green,
        ),
      );
  }
}