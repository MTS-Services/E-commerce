import 'package:get/get.dart';

class WomenTopsController extends GetxController {
  var isGridView = false.obs;

  void toggleView() {
    isGridView.value = !isGridView.value;
  }
}
