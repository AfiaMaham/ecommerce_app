import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../controller/AppController.dart';
import '../helpers/constants.dart';
import '../screens/detail_product.dart';

class ContainerWidget extends StatelessWidget {
  String company;
  int price;

  ContainerWidget({required this.company, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .44,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          color: AppColor.lightBlack, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.blueAccent, shape: BoxShape.circle),
                child: Icon(
                  Icons.favorite_border,
                  color: AppColor.whiteColor,
                  size: 14.sp,
                ),
              ).paddingOnly(left: 2.5.w, top: 1.h),
              Image.asset("assets/images/shoes.png").paddingOnly(top: 2.h),
            ],
          ),
          new DotsIndicator(
            dotsCount: 4,
            position: 0,
            decorator: DotsDecorator(
              activeColor: Colors.blueAccent,
              size: Size.square(5.0),
              activeSize: Size.square(5.0),            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: AppColor.black, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  company,
                  style: TextStyle(
                      color: AppColor.whiteColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: "poppins regular",
                      fontSize: 9.sp),
                ).paddingOnly(top: 1.h),
                Text(
                  "6 Size | 10 Color",
                  style: TextStyle(
                      color: AppColor.gray,
                      fontWeight: FontWeight.w400,
                      fontFamily: "poppins regular",
                      fontSize: 7.sp),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "poppins regular",
                          ),
                        ),
                        Text(
                          "\$$price",
                          style: TextStyle(
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.w600,
                              fontFamily: "poppins regular",
                              fontSize: 11.sp),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        AppController controller = Get.put(AppController());
                        controller.companyName = company;
                        controller.price = price;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailProduct()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            // color: ,
                          ),
                        ),
                      ).paddingOnly(
                        left: 15.w,
                      ),
                    )
                  ],
                ).paddingOnly(top: 1.h),
              ],
            ).paddingOnly(left: 2.w),
          ).paddingOnly(top: 1.h),
        ],
      ),
    );
  }
}
