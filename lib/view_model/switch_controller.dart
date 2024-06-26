import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool v=false.obs;
  changeValue(bool value ){
    v.value=value;
  }
}