import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/view_model/watch_controller.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final WatchController controller=Get.find();
    return Scaffold(
      body: Center(
        child: Obx((){
          final time=controller.currentTime.value;
          String formattedTime(DateTime time){
            int hour=time.hour%12;
            hour=hour==0?12:hour;
            String minute=time.minute.toString().padLeft(2,'0');
            String second=time.second.toString().padLeft(2,'0');
            String period=time.hour>=12?"PM":"AM";
            return '$hour:$minute:$second $period';

          }
          return Text(formattedTime(time));
        }
        )
      ),
    );
  }
}
