import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utlis/utlis.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('email_hint'.tr),
      ),
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
