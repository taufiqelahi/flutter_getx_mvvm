import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_mvvm/res/components/button.dart';
import 'package:getx_mvvm/utlis/color/app_colors.dart';

class GeneralExceptionsWidgets extends StatelessWidget {
  const GeneralExceptionsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.cloud_off,
            color: AppColors.red,
            size: 50,
          ),
          SizedBox(
            height: height * .15,
          ),
          Text('general exceptions'.tr),
          SizedBox(
            height: height * .15,
          ),
          RoundedButton(
              onTap: () {},
              child: const Text(
                'Retry',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}
