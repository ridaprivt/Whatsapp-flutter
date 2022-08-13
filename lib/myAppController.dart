import 'package:get/get.dart';

class myAppController extends GetxController {
  var myIndex = 3;

  void changeIndex(int index) {
    myIndex = index;
    update();
  }
}
