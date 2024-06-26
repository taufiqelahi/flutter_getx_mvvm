import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/utlis/color/app_colors.dart';
import 'package:getx_mvvm/view_model/counter_controller.dart';
import 'package:getx_mvvm/view_model/opacity_controller.dart';
import 'package:getx_mvvm/view_model/switch_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController=Get.put(CounterController());
    OpacityController opacityController=Get.put(OpacityController());
    SwitchController switchController=Get.put(SwitchController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterController.changeNumber();
      },child: Icon(Icons.add),),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Obx((){
            return   Column(
              children: [
                Container(
                  height: 300,
                  width: 200,
                  color:AppColors.red.withOpacity(opacityController.opacity.value) ,
                ),
                Slider(value: opacityController.opacity.value, onChanged: (va){
                  opacityController.opacity.value=va;
                }),
                SizedBox(height: 20,),
                Switch(value: switchController.v.value, onChanged: (value){
                  switchController.changeValue(value);
                }),
                SizedBox(height: 20,),
                Text(
                 counterController.a.string,
                  style: TextStyle(fontSize: 30),
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
