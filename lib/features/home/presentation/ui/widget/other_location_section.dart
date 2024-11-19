
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/component/custom_text.dart';
import '../../../../../core/constant/color/app_color.dart';
import '../../../../../core/constant/strings/app_strings.dart';

class OtherLocationSection extends StatefulWidget {
  @override
  State<OtherLocationSection> createState() => _OtherLocationSectionState();
}

class _OtherLocationSectionState extends State<OtherLocationSection> {
  final List<String> images = [
    'assets/images/location_one.png',
    'assets/images/location_two.png',
    'assets/images/location_three.png',
    'assets/images/location_four.png',
  ];

  final List<String> locations = [
  AppStrings.decencyApartment,
    AppStrings.ndukweApartment,
    AppStrings.ogbonnaApartment,
    AppStrings.daniellaApartment,
  ];

  late List<bool> _isHovered;

  @override
  void initState() {
    super.initState();
    _isHovered = List.generate(images.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.bgColor,
      width: double.infinity,
      padding: EdgeInsets.only(left: 80.w, bottom: 120.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: AppStrings.otherLocationsTitle, textAlign: TextAlign.start, fontWeight: FontWeight.w400, size: 38.sp,
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 354.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _isHovered[index] = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _isHovered[index] = false;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 519.w,
                    height: 354.h,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(32.r), // Corner radius for image
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: 354.h,
                          ),
                        ),
                        Positioned.fill(
                          child: Visibility(
                            visible: _isHovered[index],
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(32.r),
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.black.withOpacity(0.8),
                                child: CustomText(
                                  text: AppStrings.comingSoon,
                                  textAlign: TextAlign.center,
                                  size: 30.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Positioned(
                          bottom: 18,
                          left: 18,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.r),
                              border: Border.all(color: AppColor.primaryButtonColor, width: 1),
                              color: Colors.white.withOpacity(0.6),
                            ),
                            child: CustomText(
                              text: locations[index],
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w400,
                              size: 16.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}