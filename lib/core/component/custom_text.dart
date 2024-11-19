import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getshortlet/main.dart';

import '../constant/color/app_color.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.maxLines,
    this.color = AppColor.textColor,
    this.fontWeight = FontWeight.w500,
    this.size = 18,
    this.textOverflow,
    required this.textAlign,
    this.letterSpacing,
  });
  final String text;
  final int? maxLines;
  final Color color;
  final FontWeight? fontWeight;
  final double size;
  final TextOverflow? textOverflow;
  final TextAlign? textAlign;
  final double? letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: textOverflow,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          fontFamily: 'Navigo'),
    );
  }
}
