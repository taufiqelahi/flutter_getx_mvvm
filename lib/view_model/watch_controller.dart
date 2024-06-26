import 'dart:async';

import 'package:get/get.dart';

class WatchController extends GetxController{
  
  final currentTime=DateTime.now().obs;
  @override
  void onInit(){
   super.onInit();
    Timer.periodic(const Duration(seconds: 1), (Timer t){
     currentTime.value= DateTime.now();
    });
  }
}