import 'package:flutter/material.dart';
import 'package:health_test/screens/booked.dart';
import 'package:health_test/screens/date_picker.dart';
import 'package:health_test/screens/home.dart';
import 'package:health_test/screens/my_cart.dart';

Map<String,WidgetBuilder> routes = {
  "/" : (context) => const HomePage(),
  "/cart" :(context) => const MyCartPage(),
  "/calendar" :(context) => const CalendarPage(),
  "/booked" :(context) => const BookingDone()
};