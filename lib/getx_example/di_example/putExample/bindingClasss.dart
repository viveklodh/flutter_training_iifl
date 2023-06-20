import 'package:get/get.dart';

import 'countController.dart';

class CountBinding extends Bindings{
  @override
  void dependencies() {

    Get.put(()=>CountController());

  }

}