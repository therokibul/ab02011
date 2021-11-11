import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool light1 = false;
  bool light2 = false;
  bool light3 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.lightbulb_outlined,
                    size: 50,
                    color: light1 ? Colors.red : Colors.black,
                  ),
                  Icon(
                    Icons.lightbulb_outlined,
                    size: 50,
                    color: light2 ? Colors.red : Colors.black,
                  ),
                  Icon(
                    Icons.lightbulb_outlined,
                    size: 50,
                    color: light3 ? Colors.red : Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      light1 = !light1;
                    });
                  },
                  child: Container(
                    width: 130,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:
                        light1 ? Text('Turn ON Light') : Text('Turn OFF Light'),
                  ),
                ),
                GestureDetector(
                  onDoubleTap: () {
                    setState(() {
                      light2 = !light2;
                    });
                  },
                  child: Container(
                    width: 130,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:
                        light2 ? Text('Turn ON Light') : Text('Turn OFF Light'),
                  ),
                ),
                GestureDetector(
                  onLongPress: () {
                    setState(() {
                      light3 = !light3;
                    });
                  },
                  child: Container(
                    width: 130,
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:
                        light3 ? Text('Turn ON Light') : Text('Turn OFF Light'),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
