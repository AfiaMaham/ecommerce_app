import 'package:ecommerce_app/helpers/constants.dart';
import 'package:ecommerce_app/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:sizer/sizer.dart';

import '../widget/container.dart';

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        backgroundColor: AppColor.black,
        leading: Padding(
          padding: const EdgeInsets.all(13),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              shape: BoxShape.circle
            ),
              child: Icon(Icons.arrow_back)),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Find Your Favorite Shoe Style",
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 17.sp,
                    fontFamily: "poppins regular",
                    fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.shopping_cart,
                color: AppColor.whiteColor,
              ),
            ],
          ).paddingSymmetric(horizontal: 5.w,vertical: 1.h),
          SizedBox(
              height: 6.h,
              width: 88.w,
              child: FieldOfText(
                text: "Find your Fashion",
              )),
          DefaultTabController(
              length: 5,
              child: Column(
                children: [
                  TabBar(
                      isScrollable: true,
                      // labelColor: Colors.black,
                      // indicatorWeight: 2.h,
                      indicator:
                      BoxDecoration(
                          borderRadius: BorderRadius.circular(30.sp),
                          color: Colors.blueAccent),
                      unselectedLabelColor: AppColor.lightBlack,
                      // indicatorSize: TabBarIndicatorSize.label,
                      dividerColor: AppColor.black,
                      tabs: [
                        Tab(
                            child: Container(
                          width: 17.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "All",
                              style: TextStyle(
                                  color: AppColor.whiteColor, fontSize: 13.sp,fontWeight: FontWeight.w400),
                            ),
                          ),
                        )),
                        Tab(
                            child: Container(
                              height: 3.h,
                              width: 25.w,
                              child: Center(
                                child: Text(
                                  "Adidas",
                                  style: TextStyle(
                                      color: AppColor.whiteColor, fontSize: 13.sp,fontWeight: FontWeight.w400),
                                ),
                              ),
                            )),
                        Tab(
                            child: Container(
                              height: 3.h,
                              width: 25.w,
                              child: Center(
                                child: Text(
                                  "Nike",
                                  style: TextStyle(
                                      color: AppColor.whiteColor, fontSize: 13.sp,fontWeight: FontWeight.w400),
                                ),
                              ),
                            )),
                        Tab(
                            child: Container(
                              height: 3.h,
                              width: 25.w,
                              child: Center(
                                child: Text(
                                  "Puma",
                                  style: TextStyle(
                                      color: AppColor.whiteColor, fontSize: 13.sp,fontWeight: FontWeight.w400),
                                ),
                              ),
                            )),
                        Tab(
                            child: Container(
                              height: 3.h,
                              width: 25.w,
                              child: Center(
                                child: Text(
                                  "Reebok",
                                  style: TextStyle(
                                      color: AppColor.whiteColor, fontSize: 13.sp,fontWeight: FontWeight.w400),
                                ),
                              ),
                            )),
                      ]).paddingOnly(top: 1.h),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.67,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        children: [
                          ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Reebok Nano X',
                                      price: 328,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Adidas',
                                      price: 350,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Nike',
                                      price: 330,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Puma',
                                      price: 343,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                              ],
                            ),
                          ),
                          ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Adidas',
                                      price: 328,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Adidas',
                                      price: 320,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Adidas',
                                      price: 330,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Adidas',
                                      price: 353,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                              ],
                            ),
                          ),
                          ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Nike',
                                      price: 358,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Nike',
                                      price: 320,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Nike',
                                      price: 330,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Nike',
                                      price: 343,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                              ],
                            ),
                          ),
                          ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Puma',
                                      price: 358,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Puma',
                                      price: 320,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Puma',
                                      price: 330,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Puma',
                                      price: 343,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                              ],
                            ),
                          ),
                          ListView.builder(
                            itemCount: 3,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Reebok Nano X',
                                      price: 358,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Reebok Nano X',
                                      price: 325,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ContainerWidget(
                                      company: 'Reebok Nano X',
                                      price: 330,
                                    ).paddingOnly(left: 5.w),
                                    ContainerWidget(
                                      company: 'Reebok Nano X',
                                      price: 343,
                                    ).paddingOnly(right: 5.w)
                                  ],
                                ).paddingOnly(top: 1.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ).paddingOnly(top: 2.h),
                  )
                ],
              )).paddingOnly(top: 1.h),
        ],
      ),
    );
  }
}
