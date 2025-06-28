import 'package:get/get.dart';

class SubTabController extends GetxController {
  var index = 0.obs;
  var previous = 0;

  void changeIndex(int newIndex) {
    previous = index.value;
    index.value = newIndex;
  }
}
