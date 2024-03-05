import 'package:ecommerce_app/helpers/constants.dart';
import 'package:ecommerce_app/widget/cartContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/AppController.dart';
import 'cart.dart';

class DetailProduct extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    return Scaffold(
      backgroundColor: AppColor.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 45.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.lightBlack),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                                decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    shape: BoxShape.circle),
                                child: Icon(Icons.arrow_back))
                            .paddingOnly(top: 2.h),
                        Image.asset(
                          "assets/images/shoes.png",
                          scale: 0.5,
                        ).paddingOnly(top: 1.h),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10.h,
                          width: 26.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.lightBlack),
                          child: Image.asset(
                            "assets/images/shoes.png",
                            scale: 2,
                          ),
                        ).paddingOnly(left: 9.w),
                        Container(
                          height: 10.h,
                          width: 26.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.lightBlack),
                          child: Image.asset(
                            "assets/images/shoes.png",
                            scale: 2,
                          ),
                        ).paddingOnly(left: 1.w),
                        Container(
                          height: 10.h,
                          width: 26.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.lightBlack),
                          child: Image.asset(
                            "assets/images/shoes.png",
                            scale: 2,
                          ),
                        ).paddingOnly(left: 1.w),
                      ],
                    )
                  ],
                )),
            DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                        isScrollable: true,
                        labelColor: Colors.blueAccent,
                        // indicatorWeight: 2.h,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.sp),
                            color: Colors.blueAccent),
                        unselectedLabelColor: AppColor.lightBlack,
                        indicatorSize: TabBarIndicatorSize.label,
                        dividerColor: AppColor.black,
                        tabs: [
                          Tab(
                            child: Container(
                              width: 33.w,
                              child: Center(
                                child: Text(
                                  "Details",
                                  style: TextStyle(
                                      color: AppColor.whiteColor,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              width: 35.w,
                              child: Center(
                                child: Text(
                                  "Specifications",
                                  style: TextStyle(
                                      color: AppColor.whiteColor,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                          ),
                        ]).paddingOnly(top: 1.h),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    controller.companyName!,
                                    style: TextStyle(
                                        color: AppColor.whiteColor,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "poppins regular",
                                        fontSize: 20.sp),
                                  ).paddingOnly(right: 18.w),
                                  Text(
                                    "\$${controller.price}",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "poppins regular",
                                        fontSize: 18.sp),
                                  ).paddingOnly(right: 3.w),
                                ],
                              ).paddingOnly(top: 1.h),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Description",
                                  style: TextStyle(
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "poppins regular",
                                      fontSize: 12.sp),
                                ).paddingOnly(top: 2.h, left: 6.w),
                              ),
                              Text(
                                "A Fashion brand committed to providing chic style and unmatched comfort in one package Read More..",
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    fontFamily: "poppins regular",
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.gray),
                              ).paddingSymmetric(
                                  horizontal: 6.w, vertical: 1.h),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Size",
                                  style: TextStyle(
                                      color: AppColor.whiteColor,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "poppins regular",
                                      fontSize: 15.sp),
                                ),
                              ).paddingOnly(left: 6.w),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      controller.change.value = ! controller.change.value;
                                      controller.changeColor();
                                    },

                                    child: Container(
                                      height: 6.h,
                                      width: 11.w,
                                      decoration: BoxDecoration(
                                        color: controller.black,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "37",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.whiteColor),
                                        ),
                                      ),
                                    ).paddingOnly(left: 5.w),
                                  ),

                                  GestureDetector(
                                    onTap:(){
                                      controller.change.value = ! controller.change.value;
                                      controller.changeColor();
                                    },
                                    child: Container(
                                      height: 6.h,
                                      width: 11.w,
                                      decoration: BoxDecoration(
                                        color: controller.black,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "38",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.whiteColor),
                                        ),
                                      ),
                                    ).paddingOnly(left: 3.w),
                                  ),
                                  GestureDetector(
                                    onTap:(){
                                      controller.change.value = ! controller.change.value;
                                      controller.changeColor();
                                    },
                                    child: Container(
                                      height: 6.h,
                                      width: 11.w,
                                      decoration: BoxDecoration(
                                        color: controller.black,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "39",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.whiteColor),
                                        ),
                                      ),
                                    ).paddingOnly(left: 3.w),
                                  ),
                                  GestureDetector(
                                    onTap:(){
                                      controller.change.value = ! controller.change.value;
                                      controller.changeColor();
                                    },
                                    child: Container(
                                      height: 6.h,
                                      width: 11.w,
                                      decoration: BoxDecoration(
                                        color: controller.black,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "40",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.whiteColor),
                                        ),
                                      ),
                                    ).paddingOnly(left: 3.w),
                                  ),
                                  GestureDetector(
                                    onTap:(){
                                      controller.change.value = ! controller.change.value;
                                      controller.changeColor();
                                    },
                                    child: Container(
                                      height: 6.h,
                                      width: 11.w,
                                      decoration: BoxDecoration(
                                        color: controller.black,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "41",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.whiteColor),
                                        ),
                                      ),
                                    ).paddingOnly(left: 3.w),
                                  ),
                                ],
                              ),


                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Price",
                                        style: TextStyle(
                                            color: AppColor.gray,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "poppins regular",
                                            fontSize: 12.sp),
                                      ).paddingOnly(right: 5.w),
                                      Text(
                                        "\$${controller.price}",
                                        style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: "poppins regular",
                                            fontSize: 20.sp),
                                      )
                                    ],
                                  ).paddingOnly(right: 15.w),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Cart()));
                                      controller.writeData();
                                    },
                                    child: Container(
                                      height: 6.h,
                                      width: 45.w,
                                      decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          "Add to Cart",
                                          style: TextStyle(
                                              color: AppColor.whiteColor,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "poppins regular",
                                              fontSize: 13.sp),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ).paddingOnly(top: 2.h)
                            ],
                          ),
                          Text(""),
                        ],
                      ),
                    ).paddingOnly(top: 2.h)
                  ],
                )).paddingOnly(top: 1.h),
          ],
        ),
      ),
    );
  }
}
