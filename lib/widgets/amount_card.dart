import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:health_test/constants/consts.dart';

class TotalAmountCard extends StatelessWidget {
  const TotalAmountCard({
    super.key,
    required this.mrp,
    required this.discount,
  });

  final int mrp;
  final int discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      decoration: boxDecoration(),
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Gap(15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "M.R.P. Total",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text("₹ $mrp/-",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Gap(13.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text("₹ $discount/-",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          Gap(24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Amount to be paid",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: const Color(0xfe10217D),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "₹ ${mrp - discount}/-",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: const Color(0xfe10217D),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Gap(30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Total Savings",
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                ),
              ),
              Gap(30.w),
              Text("₹ $discount/-",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: const Color(0xfe10217D),
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
