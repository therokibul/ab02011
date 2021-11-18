import 'package:ab02011/widgets/appbar.dart';
import 'package:ab02011/widgets/button.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              routeName: () {
                Navigator.pushNamed(context, MyRoute.firstRoute);
              },
              btnName: 'First',
            ),
            CustomButton(
              routeName: () {
                Navigator.pushNamed(context, MyRoute.secondRoute);
              },
              btnName: 'Second',
            ),
            CustomButton(
              routeName: () {
                Navigator.pushNamed(context, MyRoute.thirdtRoute);
              },
              btnName: 'Third',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
