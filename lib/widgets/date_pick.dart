import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DatePickCard extends StatelessWidget {
  const DatePickCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.h,
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: const Color.fromRGBO(211, 211, 211, 1),
        ),
      ),
      child: Center(
        child: Row(
          children: [
            Icon(
              Icons.calendar_today_outlined,
              size: 25.sp,
            ),
            Gap(23.w),
            Container(
              height: 32.h,
              width: 230.sp,
              padding: EdgeInsets.only(left: 10.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(
                  color: const Color.fromRGBO(211, 211, 211, 1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Select date",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
