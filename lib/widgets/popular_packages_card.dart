import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:health_test/widgets/verified_icon.dart';

class PopularProductsCard extends StatelessWidget {
  const PopularProductsCard({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle? textTheme = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: const Color(0xfe6C87AE),
        );

    return Container(
      height: 270.sp,
      width: 262.sp,
      
      padding: EdgeInsets.all(24.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: const Color.fromRGBO(211, 211, 211, 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30.sp,
                child: Center(
                  child: SvgPicture.asset("assets/images/012-medicine.svg"),
                ),
              ),
              const VerifiedIcon(isSafe: true)
            ],
          ),
          Gap(18.h),
          Text(
            "Full Body Checkup",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Gap(9.h),
          Text(
            "Includes 92 tests",
            style: textTheme,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.sp),
            child: Text(
              "\u2022 Blood Glucose Fasting",
              style: textTheme,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.sp),
            child: Text(
              "\u2022 Liver Function Test",
              style: textTheme,
            ),
          ),
          Gap(4.h),
          Text(
            "View More",
            style: textTheme?.copyWith(decoration: TextDecoration.underline),
          ),
          Gap(13.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹ 2000/-",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: const Color(0xfe1BA9B5),
                    ),
              ),
              SizedBox(
                width: 114.sp,
                height: 33.sp,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: const Color(0xfe10217D),
                      width: 1.w,
                    ),
                  ),
                  child: Text("Add To Cart", style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color(0xfe10217D),
                    fontWeight: FontWeight.w500,
                  ),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
