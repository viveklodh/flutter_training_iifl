

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LangController extends GetxController {

  changeLocale(String langCode, String countryCode){
    ///
    Get.updateLocale(Locale(langCode,countryCode));
    ///
  }
}