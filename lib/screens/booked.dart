import 'package:flutter/material.dart';
import 'package:health_test/widgets/booked_successfully.dart';

class BookingDone extends StatelessWidget {
  const BookingDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Success"),
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
      body: const Center(child: BookedSuccessfully(
        
      )),
    );
  }
}