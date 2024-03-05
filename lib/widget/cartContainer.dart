import 'package:ecommerce_app/controller/AppController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../helpers/constants.dart';

class CartContainer extends StatelessWidget {
  String name;
  int price;
  int num;

  CartContainer({required this.name, required this.price, required this.num});

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());

    return Container(
      height: 16.h,
      width: 78.w,
      decoration: BoxDecoration(
          color: AppColor.lightBlack, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            height: 12.h,
            width: 26.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.whiteColor),
            child: Image.asset(
              "assets/images/shoes.png",
              scale: 2,
            ),
          ).paddingOnly(left: 4.w),
          Column(
            children: [
              Text(
                name!,
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 13.sp,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w600),
              ).paddingOnly(top: 1.5.h,left: name=="Reebok Nano X"? 3.w:0.w,right: name=="Reebok Nano X"? 0.w:13.w, ),
              Text(
                "Color : Grey and Blue",
                style: TextStyle(
                    color: AppColor.gray,
                    fontSize: 9.sp,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w600),
              ).paddingOnly(left: 3.w, top: 0.5.h),
              Text(
                "Size    : 40",
                style: TextStyle(
                    color: AppColor.gray,
                    fontSize: 9.sp,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w600),
              ).paddingOnly(right: 14.w),
              Row(
                children: [
                  Text(
                    "\$${price}",
                    style: TextStyle(
                        color: AppColor.whiteColor,
                        fontSize: 13.sp,
                        fontFamily: "poppins regular",
                        fontWeight: FontWeight.w600),
                  ).paddingOnly(top: 1.h, left: 2.w),
                  GestureDetector(
                      onTap: () {
                        controller.numberList[num]++;
                      },
                      child: Icon(
                        Icons.add,
                        color: AppColor.whiteColor,
                      ).paddingOnly(top: 1.h, right: 2.w, left: 4.w)),
                  Obx(
                    () => Text(
                      "${controller.numberList[num]}",
                      style: TextStyle(
                          color: AppColor.whiteColor, fontSize: 13.sp),
                    ).paddingOnly(top: 1.h),
                  ),
                  GestureDetector(
                      onTap: () {
                        if (controller.numberList[num] <= 0) {
                          return;
                        }
                        controller.numberList[num]--;
                      },
                      child: Icon(
                        Icons.remove,
                        color: AppColor.whiteColor,
                      ).paddingOnly(top: 1.h, left: 2.w)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
