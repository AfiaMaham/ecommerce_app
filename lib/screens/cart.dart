import 'package:ecommerce_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controller/AppController.dart';
import '../widget/cartContainer.dart';

class Cart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AppController controller = Get.put(AppController());
    List data = controller.readData();
    var shoes = controller.toObject(data);

    int total;
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        backgroundColor: AppColor.black,
        title: Text(
          "Cart",
          style: TextStyle(color: AppColor.whiteColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Select all",
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    fontFamily: "poppins regular"),
              ).paddingOnly(left: 6.w),
              GestureDetector(
                onTap: () {
                  // controller.removeIndex(shoes);
                },
                child: Icon(
                  Icons.delete,
                  color: AppColor.whiteColor,
                ).paddingOnly(right: 5.w),
              ),
            ],
          ).paddingOnly(top: 1.5.h),
          Expanded(
            child: ListView.builder(
              itemCount: shoes.length,
              itemBuilder: (context, index) {
                var item = shoes[index];

                return Row(
                children: [
                  Obx(() =>  Checkbox(
                      value: controller.isCheckList[index],
                      onChanged: (value) {
                        controller.isCheckList[index] =
                        !controller.isCheckList[index];
                      }).paddingOnly(left: 4.w),
                  ),
                  CartContainer(
                    name: shoes[index].name,
                    price: shoes[index].dollar,
                    num: index,
                  ),
                ],
              ).paddingOnly(top: 2.h);
              },
            ),
          ),
          Container(
            height: 8.h,
            child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    "\$",
                    style: TextStyle(
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins regular",
                        fontSize: 20.sp),
                  )
                ],
              ).paddingOnly(right: 15.w),
              Container(
                height: 6.h,
                width: 45.w,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Place Order",
                    style: TextStyle(
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: "poppins regular",
                        fontSize: 13.sp),
                  ),
                ),
              )
            ],
          ),)

        ],
      ),
    );
  }
}
