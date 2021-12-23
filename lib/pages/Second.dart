import 'package:ab02011/controller/sum_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatelessWidget {
 Second({Key? key}) : super(key: key);
final SumController sumController = Get.put(SumController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<SumController>(
                init: SumController(),
                builder: (cnt) {
                  return Text('Counter 1 : ${cnt.count1.value}',textScaleFactor: 2,);
                }),
            GetX<SumController>(
                init: SumController(),
                builder: (cnt) {
                  return Text('Counter 2 : ${cnt.count2.value}',textScaleFactor: 2,);
                }),
            GetX<SumController>(
                init: SumController(),
                builder: (cnt) {
                  return Text('Sum : ${cnt.sum}',textScaleFactor: 2,);
                }),

                ElevatedButton(onPressed: (){
                  sumController.increment1();
                }, child: Text('Increment counter 1')),

                ElevatedButton(onPressed: (){
                  sumController.increment2();
                }, child: Text('Increment counter 2')),
          ],
        ),
      ),
    );
  }
}
