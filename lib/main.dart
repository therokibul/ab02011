

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Layout',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Back',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Text(
              'Content',
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'Filter',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
        Image.network(
            'https://images.unsplash.com/photo-1633188985850-41c3c2ba9c2b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80'),
        ListTile(
          title: Text(
            'Header',
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
              'Hell want to use your yacht, and I dont want this thing smelling like fish.'),
        ),
        Image.network(
            'https://images.unsplash.com/photo-1633188985850-41c3c2ba9c2b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80'),
        ListTile(
          title: Text(
            'Header',
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
              'Hell want to use your yacht, and I dont want this thing smelling like fish.'),
        ),
      ],
    );
  }
}
