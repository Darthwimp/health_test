import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:health_test/widgets/view_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Appointment"),
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
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Date",
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
              Gap(15.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.sp),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10.sp,
                    offset: const Offset(0, 3),
                  ),
                ]),
                child: const ViewCalendar(),
              ),
              Gap(20.h),
              Text("Select Time",
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
              Gap(15.h),
              SizedBox(
                height: 180.h,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.sp,
                      mainAxisSpacing: 10.sp,
                      childAspectRatio: 3,
                    ),
                    itemCount: 12,
                    itemBuilder: (_, index) {
                      int time = 8;
                      bool isPM = false;
                      String timeString = "AM";
                      if (index > 4) {
                        isPM = true;
                      }
                      if (isPM) {
                        timeString = "PM";
                      }
                      return Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: const Color(0xfe10217D), width: 2.sp),
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        child: Center(
                          child: Text(
                            "${time + index}:00 $timeString",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontSize: 12.sp),
                          ),
                        ),
                      );
                    }),
              ),
              Gap(20.sp),
              SizedBox(
                height: 52.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Confirm",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp),
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
