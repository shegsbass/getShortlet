import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/color/app_color.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? backgroundColor;
  final String? text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;

  const CustomButton({
    Key? key,
    this.width = double.infinity,
    this.height = 58,
    this.borderRadius = 40,
    this.backgroundColor = AppColor.primaryButtonColor,
    this.text = 'okay',
    this.textStyle,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Center(
          child: Text(
            text!,
            style: textStyle ??
                TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.textColor,
                  fontFamily: 'Navigo',
                ),
          ),
        ),
      ),
    );
  }
}
