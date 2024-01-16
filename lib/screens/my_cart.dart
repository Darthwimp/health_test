import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:health_test/widgets/amount_card.dart';
import 'package:health_test/widgets/date_pick.dart';
import 'package:health_test/widgets/hard_copy.dart';
import 'package:health_test/widgets/order_review_test_card.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My cart',
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10.h),
              Text(
                "Order review",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: const Color(0xfe10217D),
                    fontWeight: FontWeight.bold),
              ),
              Gap(10.h),
              const OriderReviewCard(
                  title: "Thyroid profile test",
                  originalPrice: 1400,
                  offerPrice: 1000),
              Gap(15.h),
              const DatePickCard(),
              Gap(15.h),
              const TotalAmountCard(mrp: 1000, discount: 400),
              Gap(15.h),
              const HardCopyReport(),
              Gap(15.h),
              SizedBox(
                height: 50.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Schedule",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
