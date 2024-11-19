
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/component/custom_text.dart';
import '../../../../../core/constant/color/app_color.dart';
import '../../../../../core/constant/strings/app_strings.dart';

class GuestReviewSection extends StatefulWidget {
  const GuestReviewSection({Key? key}) : super(key: key);

  @override
  State<GuestReviewSection> createState() => _GuestReviewSectionState();
}

class _GuestReviewSectionState extends State<GuestReviewSection> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  late Timer _timer;

  final List<Map<String, dynamic>> _testimonials = [
    {
      "name": AppStrings.testimonialAnonymous,
      "date": AppStrings.testimonialDate1,
      "rating": 4.5,
      "text": AppStrings.testimonialText1,
      "image": "https://via.placeholder.com/300",
    },
    {
      "name": AppStrings.testimonialJohnDoe,
      "date": AppStrings.testimonialDate2,
      "rating": 5,
      "text": AppStrings.testimonialText2,
      "image": "https://via.placeholder.com/300",
    },
    {
      "name": AppStrings.testimonialJaneSmith,
      "date": AppStrings.testimonialDate3,
      "rating": 4,
      "text": AppStrings.testimonialText3,
      "image": "https://via.placeholder.com/300",
    },
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_pageController.hasClients) {
        int nextPage = (_currentIndex + 1) % _testimonials.length;
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        setState(() {
          _currentIndex = nextPage;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.bgColor,
      padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 120.h),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: AppStrings.guestReviewTitle, textAlign: TextAlign.start, fontWeight: FontWeight.w400, size: 38.sp,
                ),
                SizedBox(height: 20.h),
                // PageView with Testimonials
                SizedBox(
                  height: 300.h,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (int index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemCount: _testimonials.length,
                    itemBuilder: (context, index) {
                      final testimonial = _testimonials[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildTestimonialCard(
                            name: testimonial["name"],
                            date: testimonial["date"],
                            rating: testimonial["rating"],
                            text: testimonial["text"],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: List.generate(
                              _testimonials.length,
                                  (index) => GestureDetector(
                                onTap: () {
                                  _pageController.animateToPage(
                                    index,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,
                                  );
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: const EdgeInsets.symmetric(horizontal: 4),
                                  width: _currentIndex == index ? 12 : 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _currentIndex == index
                                        ? Colors.orange
                                        : Colors.grey.shade400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 40.w),
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/images/green_room.png',
              fit: BoxFit.fill,
              height: 400,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTestimonialCard({
    required String name,
    required String date,
    required double rating,
    required String text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: name,
                        textAlign: TextAlign.start,
                        size: 16.sp,
                        color: Color(0XFF1A1E22),
                      ),
                      SizedBox(width: 8.w),
                      Row(
                        children: List.generate(
                          5,
                              (index) => Icon(
                            index < rating.floor()
                                ? Icons.star
                                : (index < rating ? Icons.star_half : Icons.star_border),
                            color: Colors.orange,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomText(
                    text: date,
                    fontWeight: FontWeight.w400,
                    size: 12.sp,
                    textAlign: TextAlign.start,
                    color: Color(0XFF616A71),
                  ),
                ],
              ),
            ],
          ),
          // const SizedBox(height: 10),
          // Row(
          //   children: List.generate(
          //     5,
          //         (index) => Icon(
          //       index < rating.floor()
          //           ? Icons.star
          //           : (index < rating ? Icons.star_half : Icons.star_border),
          //       color: Colors.orange,
          //       size: 20,
          //     ),
          //   ),
          // ),
          SizedBox(height: 10.h),
          CustomText(
            text: text,
            textAlign: TextAlign.start,
            size: 16.sp,
            fontWeight: FontWeight.w300,
          ),
        ],
      ),
    );
  }
}
