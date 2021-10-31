import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      title: 'SliverAppBar',
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              expandedHeight: 150,
              
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Sliver AppBar'),
                background: Image.asset(
                  'assets/images/sh.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: index.isOdd ? Colors.white : Colors.grey,
                    height: 100,
                    child: Center(
                      child: Text(
                        '$index',
                        textScaleFactor: 5,
                      ),
                    ),
                  );
                },
                childCount: 25,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                    'Title 1',
                    textScaleFactor: 5,
                  ),
                  Text(
                    'Title 2',
                    textScaleFactor: 5,
                  ),
                  Text(
                    'Title 3',
                    textScaleFactor: 5,
                  ),
                ],
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 3,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 3.0,
              children: [
                Container(color: Colors.red),
                Container(color: Colors.blue),
                Container(color: Colors.green),
                Container(color: Colors.red),
                Container(color: Colors.blue),
                Container(color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
