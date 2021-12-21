import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
var data;
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value){
                  setState(() {
                    data = value;
                  });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print(data);
                Get.toNamed('/second',
                arguments: {
                    'data' : data,
                });
              },
              child: Text('Go to second Page'),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/third');
              },
              child: Text('Go to third Page'),
            ),
          ],
        ),
      ),
    );
  }
}
