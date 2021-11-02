import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

int _currentIndex = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final _navBar = <Widget>[
      const Center(
        child: Icon(
          Icons.home,
          size: 100,
        ),
      ),
      const Center(
        child: Icon(
          Icons.print_outlined,
          size: 60,
        ),
      ),
      const Center(
        child: Icon(
          Icons.account_circle_outlined,
          size: 60,
        ),
      ),
    ];

    final _NavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        label: 'TaB1',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.print_outlined,
          color: Colors.black,
        ),
        label: 'TaB2',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.account_circle_outlined,
          color: Colors.black,
        ),
        label: 'TaB3',
      ),
    ];

    assert(_navBar.length == _NavBarItems.length);

    final bottomNavBar = BottomNavigationBar(
      items: _NavBarItems,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.shifting,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );

    return MaterialApp(
      home: Scaffold(
        body: _navBar[_currentIndex],
        bottomNavigationBar: bottomNavBar,
      ),
    );
  }
}
