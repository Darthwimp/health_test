import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeData(){
  return ThemeData(
    fontFamily: "Inter",
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 22.sp,
        color: Colors.black,
      ),
      iconTheme: IconThemeData(
        color: const Color(0xfe10217D),
        size: 22.sp
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xfe10217D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        textStyle: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 11.sp,
        color: const Color.fromRGBO(71, 85, 105, 1),
      ),
      bodySmall: TextStyle(
        fontSize: 10.sp,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: TextStyle(
        fontSize: 14.sp,
        color: Color(0xfef10217D)
      ),
      displayLarge: TextStyle(
        fontSize: 20.sp,
      ),
      displaySmall: TextStyle(
        fontSize: 8.sp,
        color: const Color.fromRGBO(71, 85, 105, 1),
        fontWeight: FontWeight.w700,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        side: BorderSide(
          color: const Color(0xfe10217D),
          width: 2.w,
        ),
        textStyle: TextStyle(
          fontSize: 10.h,
          fontWeight: FontWeight.bold,
          color: const Color(0xfe10217D),
        ),
      ),
    ),
  );
}