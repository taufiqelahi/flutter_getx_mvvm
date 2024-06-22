import 'dart:ui';

import 'package:get/get.dart';

class LocaleController extends GetxController{
  void changeLocale({required String lang, required String country}){

    var locale=Locale(lang,country);
    Get.updateLocale(locale);
  }
}
