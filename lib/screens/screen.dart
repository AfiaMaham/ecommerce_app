import 'package:ecommerce_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:sizer/sizer.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 47.h,
              width: 90.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.lightBlack),
              child: Image.asset(
                "assets/images/shoes.png",
                scale: 0.5,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select Color",
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                      fontFamily: "poppins regular"),
                ).paddingOnly(left: 6.w),
                Text(
                  "See All",
                  style: TextStyle(color: AppColor.whiteColor),
                ).paddingOnly(right: 6.w),
              ],
            ).paddingOnly(top: 1.5.h),
            Row(
              children: [
                Container(
                  height: 20.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.lightBlack),
                  child: Image.asset(
                    "assets/images/shoes.png",
                    scale: 0.5,
                  ),
                ).paddingOnly(left: 3.w),
                Container(
                  height: 20.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.lightBlack),
                  child: Image.asset(
                    "assets/images/shoes.png",
                    scale: 0.5,
                  ),
                ).paddingOnly(left: 2.w)
              ],
            ).paddingOnly(top: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Fila Disrupto",
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppins regular",
                      fontSize: 20.sp),
                ).paddingOnly(right: 18.w),
                Text(
                  "\$328",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppins regular",
                      fontSize: 18.sp),
                ).paddingOnly(right: 3.w),
              ],
            ).paddingOnly(top: 1.h),
            Container(
              height: 7.h,
              width: 80.w,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Detail Product",
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppins regular",
                      fontSize: 13.sp),
                ),
              ),
            ).paddingOnly(top: 3.h),
          ],
        ),
      ),
    );
  }
}
