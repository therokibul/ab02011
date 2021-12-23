import 'dart:js';

import 'package:ab02011/controller/user_controller.dart';
import 'package:ab02011/pages/Second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ab02011/controller/counter_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
// final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GetBuilder<CounterController>(
                init: CounterController(),
                builder: (cnxt) {
                  return Text(
                    '${cnxt.count}',
                    textScaleFactor: 3,
                  );
                }),
            GetX<UserController>(
                init: UserController(),
                builder: (cnxt) {
                  return Text('Name: ${cnxt.user.value.name}');
                }),
            Obx(() {
              return Text(
                  'Stored Count: ${Get.find<UserController>().user.value.count}');
            }),
            ElevatedButton(
                onPressed: () {
                  Get.find<UserController>()
                      .updateUser(Get.find<CounterController>().count);
                },
                child: Text('update')),
                ElevatedButton(onPressed: (){
                  Get.to(Second());
                }, child: Text('go to second Page'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // counterController.increment();
          Get.find<CounterController>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
