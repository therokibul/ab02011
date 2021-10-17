import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<IconData> _icons = [
    Icons.account_balance_wallet_rounded,
    Icons.add_to_photos_rounded,
    Icons.fast_forward,
    Icons.fiber_new_outlined,
    Icons.dangerous,
    Icons.earbuds,
    Icons.tab,
    Icons.umbrella,
    Icons.account_balance_wallet_rounded,
    Icons.add_to_photos_rounded,
    Icons.fast_forward,
    Icons.fiber_new_outlined,
    Icons.dangerous,
    Icons.earbuds,
    Icons.tab,
    Icons.umbrella,
  ];
  Widget _buildIcon(int index) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Icon(
        _icons[index],
        size: 100.0,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(
              // scrollDirection: Axis.horizontal,
              itemCount: _icons.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                // mainAxisExtent: 100.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return _buildIcon(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
