
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getshortlet/core/component/apartment_type_option.dart';
import 'package:getshortlet/core/constant/color/app_color.dart';
import 'package:getshortlet/core/constant/strings/app_strings.dart';
import '../../../../../core/component/custom_text.dart';
import '../../../../../core/constant/images/image_const.dart';
import '../widget/booking_details_section.dart';
import '../widget/guest_review_section.dart';
import '../widget/other_location_section.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg_hero.png',
                alignment: Alignment.topCenter,
                width: double.infinity,
              ),
            ),

            // Foreground Widgets
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, right: 80.w, left: 80.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          ImageConst.logo,
                          fit: BoxFit.fitWidth,
                          width: 136.w,
                          height: 30.h,
                        ),
                        onPressed: () {},
                      ),
                      Container(
                        width: 300.w,
                        child: Row(
                          children: [
                            CustomText(
                              text: AppStrings.about,
                              textAlign: TextAlign.center,
                              size: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(width: 40.w),
                            CustomText(
                              text: AppStrings.services,
                              textAlign: TextAlign.center,
                              size: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(width: 40.w),
                            CustomText(
                              text: AppStrings.locations,
                              textAlign: TextAlign.center,
                              size: 18.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 192.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          color: AppColor.primaryButtonColor,
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        child: Center(
                          child: Text(
                        AppStrings.reserveSpace,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.textColor,
                              fontFamily: 'Navigo',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomText(
                  text: AppStrings.jabaliApartment,
                  textAlign: TextAlign.center,
                  size: 96.sp,
                ),
                SizedBox(height: 12.h),
                CustomText(
                  text: AppStrings.cozyApartmentDescription,
                  textAlign: TextAlign.center,
                  size: 24.sp,
                ),
                SizedBox(height: 32.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ApartmentTypeOptionContainer(text: AppStrings.studioApartment, imgPath: ImageConst.squareIcon,),
                    SizedBox(width: 11.w),
                    ApartmentTypeOptionContainer(text: AppStrings.oneBed, imgPath: ImageConst.squareIcon,),
                    SizedBox(width: 11.w),
                    ApartmentTypeOptionContainer(text: AppStrings.oneBathroom, imgPath: ImageConst.squareIcon,),
                    SizedBox(width: 11.w),
                    ApartmentTypeOptionContainer(text: AppStrings.lekkiPhase1, imgPath: ImageConst.squareIcon,),
                  ],
                ),
                SizedBox(height: 52.h),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, right: 80.w, left: 80.w),
                  child: Image.asset(
                    'assets/images/apartments.png',
                    width: double.infinity,
                  ),
                ),

                SizedBox(
                  height: 80.h,
                ),
                BookingDetailsSection(),
                GuestReviewSection(),
                OtherLocationSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





