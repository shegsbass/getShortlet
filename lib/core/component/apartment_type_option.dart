import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getshortlet/core/component/custom_text.dart';
import 'package:getshortlet/core/constant/color/app_color.dart';
import 'package:getshortlet/core/constant/images/image_const.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ApartmentTypeOptionContainer extends StatelessWidget {
  final String text;
  final String imgPath;
  final Color backgroundColor;

  const ApartmentTypeOptionContainer({
    Key? key,
    required this.text,
    required this.imgPath,
    this.backgroundColor = AppColor.tabColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40.r),
      ),
      padding:  EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          SvgPicture.asset(
            imgPath,
            width: 16.w,
            height: 16.h,
          ),
          SizedBox(width: 4.w),
          Text(
            text,
            style: TextStyle(
                fontSize: 14.sp,
                color: AppColor.textColor,
                fontWeight: FontWeight.w500,
                fontFamily: 'Navigo'),
          ),
        ],
      ),
    );
  }
}
