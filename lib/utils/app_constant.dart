import 'package:get/get.dart';

class AppConstant {
  static bool isEn() {
    return Get.locale.toString() == 'en_EN' ? true : false;
  }
  static String getCurrentLanguege() {
    return isEn() ? "en" : "th";
  }
}