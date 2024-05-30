import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/assets/image_assets..dart';
import 'package:getx_mvvm/res/components/general_exceptions_widgets.dart';
import 'package:getx_mvvm/res/components/internet_exceptions_widgets.dart';
import 'package:getx_mvvm/utlis/utlis.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GeneralExceptionsWidgets(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('email_hint'.tr),
      ),
      body: Image.asset(ImageAssets.iconImage),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Utils.toastMessage(message: 'message');
         Utils.toastMessageCenter(message: 'message');
        },
        child: Text(''),
      ),
    );
  }
}
