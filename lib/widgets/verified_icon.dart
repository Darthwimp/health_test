import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class VerifiedIcon extends StatelessWidget {
  const VerifiedIcon({super.key, this.isSafe = false});

  final bool? isSafe;

  @override
  Widget build(BuildContext context) {
    double width = 27.w;
    double gap = 0;
    final String safe;

    if (isSafe == true) {
      safe = "Safe";
      width = 54.sp;
      gap = 6.sp;
    } else {
      safe = "";
    }

    return Container(
      height: 24.h,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        color: const Color(0xfe16C2D5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.verified_user, color: Colors.white, size: 12.sp),
          Gap(gap),
          Text(safe, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
