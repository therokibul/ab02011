import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'SignUp',
                  style: TextStyle(color: Colors.green),
                ),
              ),
              Text(
                'Login',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          const SizedBox(height: 200),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  labelText: 'Email',
                  helperText: 'Example: contact@rokibul.com',
                  hintText: 'Enter your Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  labelText: 'Password',
                  hintText: 'Enter your Password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                primary: Colors.white,
                backgroundColor: Color(0xff5DB075),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Login'),
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'Forgot your password?',
            ),
          ),
        ],
      ),
    );
  }
}
