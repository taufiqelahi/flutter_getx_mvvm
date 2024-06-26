import 'package:get/get.dart';

class FavouriteController  extends GetxController{
  RxBool favourite=false.obs;
  isFavourite(){
    favourite.value=!favourite.value;
  }
}