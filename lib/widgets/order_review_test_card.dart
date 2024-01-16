import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class OriderReviewCard extends StatelessWidget {
  const OriderReviewCard({
    super.key,
    required this.title,
    required this.originalPrice,
    required this.offerPrice,
  });

  final String title;
  final int originalPrice;
  final int offerPrice;

  ButtonStyle buttonDesign() {
    return OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.r),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: const Color.fromRGBO(211, 211, 211, 1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              child: Text("Pathology tests",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 14.sp)),
            ),
          ),
          Gap(10.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.bodyLarge),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("₹ $offerPrice",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: const Color(0xfe16C2D5),
                                      fontWeight: FontWeight.bold,
                                    )),
                        Text(
                          "₹ $originalPrice",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  decoration: TextDecoration.lineThrough),
                        ),
                        Gap(10.h),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 34.h,
                  width: 130.w,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: buttonDesign(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.delete_outline,
                          size: 22.sp,
                        ),
                        Text(
                          "Remove",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Gap(9.h),
                SizedBox(
                  height: 34.h,
                  width: 250.w,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: buttonDesign(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.file_upload_outlined,
                          size: 22.sp,
                        ),
                        Text(
                          "Upload Prescription (optional)",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
