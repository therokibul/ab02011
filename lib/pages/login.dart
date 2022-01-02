import 'dart:js';

import 'package:ab02011/pages/home.dart';
import 'package:ab02011/pages/navigation.dart';
import 'package:ab02011/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final phoneControler = TextEditingController();
  final otpControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sign With A Phone Number'),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: phoneControler,
                  decoration: InputDecoration(
                      hintText: 'Enter Your Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      prefixText: '+88'),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Enter OTP'),
                            actions: [
                              TextField(
                                controller: otpControler,
                                decoration: InputDecoration(
                                  hintText: 'Enter OTP',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NavBar()));
                                },
                                color: Colors.black,
                                child: Text(
                                  'SEND',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.black,
                  child: Text(
                    'VERIFy',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
