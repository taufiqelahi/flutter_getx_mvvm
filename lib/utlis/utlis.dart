import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/route_manager.dart';
import 'package:getx_mvvm/utlis/color/app_colors.dart';

class Utils {
  static void fieldFocusChange(
      {required BuildContext context,
      required FocusNode current,
      required FocusNode nextFocus}) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage({required String message}) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: AppColors.black,
        textColor: AppColors.white,
        toastLength: Toast.LENGTH_LONG);
  }

  static toastMessageCenter({required String message}) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.CENTER,
        backgroundColor: AppColors.black,
        textColor: AppColors.white,
        toastLength: Toast.LENGTH_LONG);
  }

  static snackBar({required String title, required String message}) {
    Get.snackbar(title, message);
  }
}
