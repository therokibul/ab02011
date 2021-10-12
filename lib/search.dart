import 'package:flutter/material.dart';
import 'blog_post.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.green),
                    )),
                Text(
                  'Content',
                  style: TextStyle(fontSize: 30),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BlogPost()));
                    },
                    child: Text(
                      'Filter',
                      style: TextStyle(color: Colors.green),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  labelText: 'Search',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'Search Result',
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    thickness: 4,
                  ),
                  Text(
                    'Search Result',
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    thickness: 4,
                  ),
                  Text(
                    'Search Result',
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    thickness: 4,
                  ),
                  Text(
                    'Search Result',
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    thickness: 4,
                  ),
                  Text(
                    'Search Result',
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    thickness: 4,
                  ),
                  Text(
                    'Search Result',
                    style: TextStyle(fontSize: 20),
                  ),
                  Divider(
                    thickness: 4,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
