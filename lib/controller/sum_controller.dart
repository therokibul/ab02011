import 'package:get/get.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  increment1() => count1.value++;
  increment2() => count2.value++;

  int get sum => count1.value + count2.value;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    ever(count1, (cnt) => print('$cnt'));
    once(count1, (cnt) => print('$cnt send to server'));
    debounce(count1, (cnt) => print('debounce $cnt'),
        time: Duration(seconds: 1));
    interval(count1, (cnt) => print('interval$cnt'),
        time: Duration(seconds: 1));
  }
}
