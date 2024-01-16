import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:health_test/constants/consts.dart';
import 'package:health_test/widgets/lab_test_card.dart';
import 'package:health_test/widgets/popular_packages_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Logo',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10.h),
              SizedBox(
                height: 410.h,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 10.w,
                      childAspectRatio: 0.9,
                    ),
                    itemCount: popularTests.length,
                    itemBuilder: (_, index) {
                      return LabTestCard(
                        title: popularTests[index]['name'],
                        originalPrice: popularTests[index]['originalPrice'],
                        offerPrice: popularTests[index]['offerPrice'],
                      );
                    }),
              ),
              Gap(10.h),
              Text(
                "Popular Packages",
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: Color(0xfe10217D),
                    ),
              ),
              Gap(15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: SizedBox(
                  height: 300.h,
                  child: ListView.builder(
                    
                    itemCount: 2,
                    itemBuilder: (_,index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: const PopularProductsCard(),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
