import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:health_test/constants/consts.dart';

class HardCopyReport extends StatelessWidget {
  const HardCopyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: boxDecoration(),
      padding: EdgeInsets.all(10.sp),
      child: Column(
        children: [
          RadioMenuButton(
            value: "asdd",
            groupValue: "asd",
            onChanged: (_) {
              
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hard copy of reports",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 10.sp,
                        color: Colors.black,
                      ),
                ),
                Gap(5.h),
                Text(
                  hardReport,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 10.sp,
                      ),
                  softWrap: false,
                  maxLines: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
