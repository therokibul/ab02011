import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/model_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: HttpTest(),
      ),
    );
  }
}

class HttpTest extends StatelessWidget {
  const HttpTest({Key? key}) : super(key: key);

  Future getData() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    var responseData = jsonDecode(response.body);
    List users = [];
    for (var index in responseData) {
      User user = User(
          name: index['name'],
          username: index['username'],
          email: index['email'],
          phone: index['phone']);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Text('Name: ${snapshot.data[index].name}',textScaleFactor: 3,),
                        Text('User Name : ${snapshot.data[index].username}',textScaleFactor: 2,),
                        Text('Email ID : ${snapshot.data[index].email}',textScaleFactor: 2,),
                        Text('Phone Number : ${snapshot.data[index].phone}',textScaleFactor: 1,),
                      ],
                    ),
                  );
                });
          }
        });
  }
}
