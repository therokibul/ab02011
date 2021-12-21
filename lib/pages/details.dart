import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(Get.arguments["covidData"]["country"]),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(Get.arguments["covidData"]["countryInfo"]["flag"]),
            Text(Get.arguments["covidData"]["country"]),
          ],
        ),
      ),
    );
  }
}
