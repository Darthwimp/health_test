import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_test/constants/theme.dart';
import 'package:health_test/screens/my_cart.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 813),
      builder: (_,child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
        theme: themeData(),
      ),
      child: const MyCartPage(),
    );
  }
}