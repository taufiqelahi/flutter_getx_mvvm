import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController{
  var isDark=false.obs;
  void changeTheme(){
    if(isDark.value){
      Get.changeTheme(ThemeData.light());
    }else{
      Get.changeTheme(ThemeData.dark());

    }
    isDark.value = !isDark.value;
  }
    IconData get icon => isDark.value?Icons.wb_sunny:Icons.nightlight;

}