import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List popularTests = [
  {
    "name": "Thyroid Profile",
    "number of tests": "4",
    "originalPrice": 1400,
    "offerPrice": 1000,
  },
  {
    "name": "Iron Study Test",
    "number of tests": "4",
    "originalPrice": 1000,
    "offerPrice": 600,
  },
  {
    "name": "Thyroid Profile",
    "number of tests": "4",
    "originalPrice": 1400,
    "offerPrice": 1000,
  },
  {
    "name": "Iron Study Test",
    "number of tests": "4",
    "originalPrice": 1000,
    "offerPrice": 600,
  },
];

BoxDecoration boxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(6.r),
    border: Border.all(
      color: const Color.fromRGBO(211, 211, 211, 1),
    ),
  );
}

const String hardReport = "Reports will be delivered within 3-4 working days.\nHard copy charges are non-refundable once the \nreports have been dispatched.";