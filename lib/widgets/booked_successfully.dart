import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:health_test/constants/consts.dart';

class BookedSuccessfully extends StatelessWidget {
  const BookedSuccessfully({super.key, this.date = "11 oct 2023", this.time = "9 AM"});

 final String date;
 final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 417.h,
      width: 330.w,
      decoration: boxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/images/Group_10441.svg"),
          Text(
            "Lab tests have been \nscheduled successfully, You\nwill receive a mail of the same.",
            style: Theme.of(context).textTheme.bodyLarge,
          ), 
          Gap(15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$date  |  $time", style: Theme.of(context).textTheme.bodyMedium,)
            ],
          )
        ],
      ),
    );
  }
}
