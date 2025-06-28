import 'package:get/get.dart';

class SearchBarController extends GetxController {
  var showFilters = false.obs;

  void toggleFilters() {
    showFilters.value = !showFilters.value;
  }
}