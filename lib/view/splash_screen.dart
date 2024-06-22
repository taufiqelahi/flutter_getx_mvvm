import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/assets/image_assets..dart';
import 'package:getx_mvvm/res/components/general_exceptions_widgets.dart';
import 'package:getx_mvvm/res/components/internet_exceptions_widgets.dart';
import 'package:getx_mvvm/utlis/utlis.dart';
import 'package:getx_mvvm/view_model/langunage_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController langunageController=Get.find();
    // return Scaffold(
    //   body: GeneralExceptionsWidgets(),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text('email_hint'.tr),
        actions: [
          PopupMenuButton(
            offset: Offset(0.0, AppBar().preferredSize.height),

            // padding: EdgeInsets.zero,
            icon: const Icon(Icons.language),
            itemBuilder: (context) => [
              // popupmenu item 1
              const PopupMenuItem(
                value: 1,
                // row has two child icon and text.
                child: Text("English"),
              ),
              // popupmenu item 2
              const PopupMenuItem(
                value: 2,
                // row has two child icon and text
                child: Text("বাংলা"),
              ),

            ],

            color: Colors.grey,
            elevation: 2,
            onSelected: (value){
              if(value==1){
                langunageController.changeLocale(lang: 'en', country: 'US');
              }else if(value==2){
                langunageController.changeLocale(lang: 'bn', country: 'BD');

              }
            },
          ),
        ],
      ),
      body: Image.asset(ImageAssets.iconImage),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         Utils.toastMessage(message: 'message');
         Utils.toastMessageCenter(message: 'message');
        },
        child: const Text(''),
      ),
    );
  }
}
