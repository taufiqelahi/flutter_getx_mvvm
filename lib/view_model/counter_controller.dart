import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt a=1.obs;
  changeNumber(){

    a.value++;

  }
}