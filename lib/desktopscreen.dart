
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.7,
              height: screenHeight * 0.7,
              color: Colors.teal,
              constraints: BoxConstraints(
                minWidth: 300,
                maxWidth: 600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
