import 'package:ecommerce_app/helpers/constants.dart';
import 'package:ecommerce_app/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:sizer/sizer.dart';

import '../widget/container.dart';

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var tabsNames = ['Men', 'Women', 'Kids', 'Shoes', 'Sport'];

    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        backgroundColor: AppColor.black,
        leading: Padding(
          padding: const EdgeInsets.all(13),
          child: Container(decoration: BoxDecoration(color: AppColor.whiteColor, shape: BoxShape.circle), child: Icon(Icons.arrow_back)),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text(
                "Find Your Favorite Shoe Style",
                style: TextStyle(color: AppColor.whiteColor, fontSize: 17.sp, fontFamily: "poppins regular", fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.shopping_cart,
                color: AppColor.whiteColor,
              ),
            ],
          ).paddingSymmetric(horizontal: 5.w, vertical: 1.h),
          SizedBox(
              height: 6.h,
              width: 88.w,
              child: FieldOfText(
                text: "Find your Fashion",
              )),
          Expanded(
            child: DefaultTabController(
                length: 5,
                child: Column(
                  children: [
                    TabBar(
                            isScrollable: true,
                            // labelColor: Colors.black,
                            // indicatorWeight: 2.h,
                            indicator: BoxDecoration(borderRadius: BorderRadius.circular(30.sp), color: Colors.blueAccent),
                            unselectedLabelColor: AppColor.lightBlack,
                            // indicatorSize: TabBarIndicatorSize.label,
                            dividerColor: AppColor.black,
                            tabs: tabsNames
                                .map((e) => Tab(
                                        child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Text(
                                        e,
                                        style: TextStyle(color: AppColor.whiteColor, fontSize: 13.sp, fontWeight: FontWeight.w400),
                                      ),
                                    )))
                                .toList())
                        .paddingOnly(top: 1.h),
                    Expanded(
                      child: TabBarView(
                        children: tabsNames.map(
                          (e) {
                            return SingleChildScrollView(
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                children: List.generate(
                                  10,
                                  (index) => ContainerWidget(
                                    company: 'Nike',
                                    price: 358,
                                  ),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ).paddingOnly(top: 2.h),
                    )
                  ],
                )).paddingOnly(top: 1.h),
          ),
        ],
      ),
    );
  }
}
