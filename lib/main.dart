import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Text(
        //     'Layout',
        //     style: TextStyle(color: Colors.black),
        //   ),
        // ),
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
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 180),
              color: Colors.green,
              height: 280,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Back',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    'Content',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  Text(
                    'Filter',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 180,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/lash.jpg'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 110,
        ),
        Text(
          'Victoria Robertson',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        Text(
          'Flutter Developer',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          padding: EdgeInsets.fromLTRB(50, 10, 0, 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: Text(
            'Posts',
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.green, fontSize: 18),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.flutter_dash_outlined,
            color: Colors.white,
          ),
          title: Text(
            'Posts',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            'Hell want to use your yacht, and I dont want this thing smelling like fish.',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Divider(
           color: Colors.white,
        ),
        ListTile(
          leading: Icon(
            Icons.flutter_dash_outlined,
            color: Colors.white,
          ),
          title: Text(
            'Posts',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            'Hell want to use your yacht, and I dont want this thing smelling like fish.',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Divider(
          
          color: Colors.white,
        ),
        ListTile(
          leading: Icon(
            Icons.flutter_dash_outlined,
            color: Colors.white,
          ),
          title: Text(
            'Posts',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          subtitle: Text(
            'Hell want to use your yacht, and I dont want this thing smelling like fish.',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Divider(
          color: Colors.white,
        ),
      ],
    );
  }
}
