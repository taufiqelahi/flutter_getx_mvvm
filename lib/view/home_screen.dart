import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/view_model/counter_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController=Get.put(CounterController());
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
            return   Text(
             counterController.a.string,
              style: TextStyle(fontSize: 30),
            );
          })
          ],
        ),
      ),
    );
  }
}
