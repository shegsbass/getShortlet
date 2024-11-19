
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../core/component/custom_text.dart';
import '../../../../../core/component/primary_button.dart';
import '../../../../../core/constant/color/app_color.dart';
import '../../../../../core/constant/images/image_const.dart';
import '../../../../../core/constant/strings/app_strings.dart';

class BookingDetailsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColor.bgColor,
      padding: EdgeInsets.only(top: 56.h, right: 80.w, left: 80.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 56.h, horizontal: 40.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildRulesSection(
                        title: "we had you in mind when we made this home 😊",
                        features: [
                          "cozy private bedroom with ample natural light for a restful stay.",
                          "modern kitchen with updated appliances for easy meal prep.",
                          "clean, well-lit bathroom with a spacious shower, fresh towels, and essential toiletries.",
                          "spacious living room with comfortable seating and plenty of natural light.",
                        ],
                        iconsText: [
                          "tv",
                          "refrigerator",
                          "ac",
                          "board games",
                          "books",
                          "stove"
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 56.h, horizontal: 40.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _dontSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 16.w),


          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 58, horizontal: 40 ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32.r),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header price and viewers
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'NGN ', // Style for "NGN"
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w300,
                                color: AppColor.textColor,
                                fontFamily: 'Navigo'
                              ),
                            ),
                            TextSpan(
                              text: '98,700 ',
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.textColor,
                                  fontFamily: 'Navigo'
                              ),
                            ),
                            TextSpan(
                              text: 'per night', // Style for "per night"
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16.sp,
                                  color: Color(0XFF9B9BA7),
                                  fontFamily: 'Navigo'
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                            color: Colors.green[50],
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.circle, size: 10, color: Colors.green),
                              SizedBox(width: 8),
                              CustomText(
                                text: '2 others currently viewing',
                                size: 12.sp,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          )),
                        ],
                  ),

                  SizedBox(height: 50.h),
                  Divider(color: Color(0XFFDADADA)),
                  SizedBox(height: 44.h),

                  DatePickerUI(),

                  SizedBox(height: 40.h),
                  // Pricing breakdown
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'NGN 98,700 x 5 nights',
                        fontWeight: FontWeight.w300,
                        size: 14.sp,
                        textAlign: TextAlign.start,
                      ),
                      CustomText(
                        text: 'NGN 493,500',
                        fontWeight: FontWeight.w400,
                        size: 14.sp,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'refundable service charge',
                        fontWeight: FontWeight.w400,
                        size: 14.sp,
                        textAlign: TextAlign.start,
                      ),
                      CustomText(
                        text: 'NGN 50,00',
                        fontWeight: FontWeight.w400,
                        size: 14.sp,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Divider(color: Colors.grey[300]),
                  SizedBox(height: 20.h),
                  // Total
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: 'total',
                        size: 20.sp,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.start,
                      ),
                      CustomText(
                        text: 'NGN 543,500',
                        size: 20.sp,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  SizedBox(height: 56),
                  // Proceed button
                  CustomButton(
                    text: 'proceed',
                    textStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 16),
                  // Cancellation policy
                  Center(
                    child: Text(
                      'cancellation policy',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Navigo',
                        fontWeight: FontWeight.w300,
                        color: AppColor.textColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRulesSection({
    required String title,
    required List<String> features,
    required List<String> iconsText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          textAlign: TextAlign.left,
          size: 24.sp,
        ),
        SizedBox(height: 10.h),
        ...features.map((feature) {
          return Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Row(
              children: [
                Image.asset(ImageConst.homeDarkIcon, height: 20.w, width: 20.w,),
                SizedBox(width: 11.w),
                Expanded(
                  child: CustomText(
                    text: feature,
                    textAlign: TextAlign.left,
                    size: 20.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
        SizedBox(height: 40.h),
        Divider(color: AppColor.tabColor, thickness: 1,),
        SizedBox(height: 40.h),
        Row(
          children: [
            _buildAppliancesList('tv'),
            SizedBox(width: 24.w),
            _buildAppliancesList('refrigerator'),
            SizedBox(width: 24.w),
            _buildAppliancesList('ac'),
            SizedBox(width: 24.w),
            _buildAppliancesList('board games'),
            SizedBox(width: 24.w),
            _buildAppliancesList('books'),
            SizedBox(width: 24.w),
            _buildAppliancesList('stove'),
          ],
        )
      ],
    );
  }

  Widget _dontSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'so please keep us in mind.',
          textAlign: TextAlign.left,
          size: 24.sp,
        ),
        SizedBox(height: 40.h),
        Row(
          children: [
            _buildAppliancesList('no smoking'),
            SizedBox(width: 24.w),
            _buildAppliancesList('no weapons'),
            SizedBox(width: 24.w),
            _buildAppliancesList('no partying'),
            SizedBox(width: 24.w),
            _buildAppliancesList('no drugs'),
          ],
        )

      ],
    );
  }


  Widget _buildAppliancesList(String iconText){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 43.w, vertical: 22.h),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Image.asset(ImageConst.homeLightIcon, width: 20.w, height: 20.h),
          SizedBox(height: 8.h),
          CustomText(
            text: iconText,
            textAlign: TextAlign.center,
            size: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );
  }

  Widget _buildBookingDetailRow({required String title, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}


class GuestChip extends StatelessWidget {
  final String label;

  const GuestChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
      ),
    );
  }
}



class DatePickerUI extends StatefulWidget {
  @override
  _DatePickerUIState createState() => _DatePickerUIState();
}

class _DatePickerUIState extends State<DatePickerUI> {
  DateTime checkInDate = DateTime.now();
  DateTime checkOutDate = DateTime.now().add(Duration(days: 5));

  Future<void> _selectDate(BuildContext context, bool isCheckIn) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: isCheckIn ? checkInDate : checkOutDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        if (isCheckIn) {
          checkInDate = pickedDate;
        } else {
          checkOutDate = pickedDate;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => _selectDate(context, true),
                        child: _buildDateField('check-in', checkInDate),
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey.shade400,
                      margin: EdgeInsets.symmetric(vertical: 8),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => _selectDate(context, false),
                        child: _buildDateField('check-out', checkOutDate),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey.shade400, thickness: 1),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    CustomText(
                      text: 'guests:',
                      fontWeight: FontWeight.w500,
                      size: 14.sp,
                      color: AppColor.textColor,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(width: 8),
                    _buildGuestChip('2 adults'),
                    SizedBox(width: 8),
                    _buildGuestChip('1 infant'),
                    SizedBox(width: 8),
                    _buildGuestChip('1 pet'),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }

  Widget _buildDateField(String label, DateTime date) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: label,
            fontWeight: FontWeight.w500,
            size: 12.sp,
            color: AppColor.textColor,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: DateFormat('dd/MM/yyyy').format(date),
                fontWeight: FontWeight.w300,
                size: 20.sp,
                color: Color(0XFF707070),
                textAlign: TextAlign.start,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.grey.shade600,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGuestChip(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0XFFEBEBED),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: CustomText(
        text: label,
        fontWeight: FontWeight.w500,
        size: 14.sp,
        color: AppColor.textColor,
        textAlign: TextAlign.start,
      ),
    );
  }
}
