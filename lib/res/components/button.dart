import 'package:flutter/material.dart';
import 'package:getx_mvvm/utlis/color/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  final Size? size;
  final VoidCallback onTap;
  final BorderRadius? borderRadius;
  final Color? backgroundColor, forgroundColor;
  const RoundedButton(
      {super.key,
      required this.child,
      required this.onTap,
      this.backgroundColor,
      this.forgroundColor,
      this.size,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        style: ElevatedButton.styleFrom(
          minimumSize: size??Size(300, 60),
          backgroundColor: backgroundColor??AppColors.blueGreen,
          foregroundColor: forgroundColor??AppColors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(30))),
        onPressed: onTap,
        child: child);
  }
}
