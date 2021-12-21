import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List covidData = [];

  Future getData() async {
    var resposne =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries'));
    var responseData = jsonDecode(resposne.body);
    setState(() {
      covidData = responseData;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: covidData.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: (){
                  Get.toNamed('/details',
                  arguments: {
                    "covidData":covidData[index],
                  });
                },
                leading: Image.network(
                  covidData[index]["countryInfo"]["flag"],
                  width: 100,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                title: Text(covidData[index]["country"]),
                subtitle: Text('Tottal Cases ${covidData[index]["cases"]}'),
              ),
            );
          }),
    );
  }
}
