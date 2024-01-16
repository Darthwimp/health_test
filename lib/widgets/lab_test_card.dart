import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:health_test/widgets/verified_icon.dart';

class LabTestCard extends StatelessWidget {
  const LabTestCard(
      {super.key,
      required this.title,
      required this.offerPrice,
      required this.originalPrice});

  final String title;
  final int offerPrice;
  final int originalPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: const Color.fromRGBO(211, 211, 211, 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 32.h,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(16, 33, 125, 0.8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.r),
                topRight: Radius.circular(5.r),
              ),
            ),
            child: Center(
              child: Text(title, style: Theme.of(context).textTheme.bodySmall),
            ),
          ),
          Gap(7.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Includes 3 tests",
                  style: Theme.of(context).textTheme.bodyMedium),
              const VerifiedIcon()
            ],
          ),
          Gap(5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0.w),
                child: Text("Get Reports in 24 hours",
                    style: Theme.of(context).textTheme.displaySmall),
              ),
            ],
          ),
          Gap(5.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("₹$offerPrice",
                    style: Theme.of(context).textTheme.displayMedium),
                Gap(5.w),
                Text(
                  "₹$originalPrice",
                  style: TextStyle(
                    fontSize: 9.sp,
                    color: const Color.fromRGBO(71, 85, 105, 1),
                    decoration: TextDecoration.lineThrough,
                  ),
                )
              ],
            ),
          ),
          Gap(13.h),
          SizedBox(
            height: 26.h,
            width: 116.w,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Add to cart",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Gap(8.h),
          SizedBox(
            height: 26.h,
            width: 116.w,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text("Book Now"),
            ),
          ),
        ],
      ),
    );
  }
}
