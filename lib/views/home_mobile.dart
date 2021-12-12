import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var secreenSize = MediaQuery.of(context).size;
    var secreenWidth = secreenSize.width;
    var secreenHeigth = secreenSize.height;
    return Center(
      child: Column(
        children: [
          
             Container(
              width: secreenWidth * 0.8,
              height: secreenHeigth * 0.5,
              constraints: BoxConstraints(
                maxWidth: 700,
                minWidth: 400,
              ),
              color: Colors.black,
            ),
          
        ],
      ),
    );
  }
}
