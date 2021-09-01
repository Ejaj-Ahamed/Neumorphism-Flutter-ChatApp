import 'package:chatapp/Global/Constants.dart';
import 'package:get/get.dart'; 

class GlobalBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<Constants>(Constants());
  }
}
