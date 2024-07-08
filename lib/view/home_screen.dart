import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utlis/color/app_colors.dart';
import 'package:getx_mvvm/view_model/counter_controller.dart';
import 'package:getx_mvvm/view_model/favourite_controller.dart';
import 'package:getx_mvvm/view_model/image_picker_controller.dart';
import 'package:getx_mvvm/view_model/opacity_controller.dart';
import 'package:getx_mvvm/view_model/switch_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    OpacityController opacityController = Get.put(OpacityController());
    SwitchController switchController = Get.put(SwitchController());
    ImagePickerController imagePickerController=Get.put(ImagePickerController());
    FavouriteController favouriteController = Get.put(FavouriteController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.changeNumber();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          Obx(() {
            return IconButton(
                onPressed: () {
                  favouriteController.isFavourite();
                },
                icon: favouriteController.favourite.value
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_outline));
          })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
            ()=>InkWell(
              onTap: () async {
                await imagePickerController.getImage();
              },
              child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 40,
               child: imagePickerController.imagePath.isNotEmpty?Image.file(File(imagePickerController.imagePath.value)):Container(),
                ),
            ),
            ),
            SizedBox(height: 30,),
            Obx(() {
              return Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: AppColors.red
                        .withOpacity(opacityController.opacity.value),
                  ),
                  Slider(
                      value: opacityController.opacity.value,
                      onChanged: (va) {
                        opacityController.opacity.value = va;
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Switch(
                      value: switchController.v.value,
                      onChanged: (value) {
                        switchController.changeValue(value);
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    counterController.a.string,
                    style: const TextStyle(fontSize: 30),
                  ),
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}
