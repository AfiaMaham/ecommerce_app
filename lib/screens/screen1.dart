// import 'dart:math';
//
// import 'package:ecommerce_app/helpers/constants.dart';
// import 'package:ecommerce_app/widget/container.dart';
// import 'package:flutter/material.dart';
// import 'package:get/utils.dart';
// import 'package:sizer/sizer.dart';
//
// import '../widget/text_field.dart';
//
// class Screen1 extends StatelessWidget {
//   const Screen1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: AppColor.black,
//         body: SafeArea(
//             child: Column(
//           children: [
//             ListTile(
//               leading: CircleAvatar(
//                 child: Image.asset("assets/images/person.png"),
//               ),
//               title: Text(
//                 "Hello Mubashar!",
//                 style: TextStyle(
//                     color: AppColor.whiteColor,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 14.sp),
//               ),
//               subtitle: Text(
//                 "Good Morning",
//                 style: TextStyle(color: AppColor.whiteColor),
//               ),
//               trailing: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(
//                     Icons.shopping_bag,
//                     color: AppColor.whiteColor,
//                   ).paddingOnly(right: 5.w),
//                   Icon(
//                     Icons.notifications,
//                     color: AppColor.whiteColor,
//                   )
//                 ],
//               ),
//             ).paddingOnly(left: 2.w),
//             SizedBox(
//               height: 6.h,
//               width: 88.w,
//               child: FieldOfText(text: "Find you shoes",),
//             ).paddingOnly(top: 0.7.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Category",
//                   style: TextStyle(
//                       color: AppColor.whiteColor,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 12.sp,
//                       fontFamily: "poppins regular"),
//                 ).paddingOnly(left: 6.w),
//                 Text(
//                   "See All",
//                   style: TextStyle(color: AppColor.whiteColor),
//                 ).paddingOnly(right: 6.w),
//               ],
//             ).paddingOnly(top: 1.5.h),
//             DefaultTabController(
//                 length: 3,
//                 child: Column(
//                   children: [
//                     TabBar(
//                         isScrollable: true,
//                         labelColor: Colors.blueAccent,
//                         indicatorWeight: 2.h,
//                         indicator: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10.sp),
//                             color: Colors.blueAccent),
//                         unselectedLabelColor: AppColor.lightBlack,
//                         indicatorSize: TabBarIndicatorSize.label,
//                         dividerColor: AppColor.black,
//                         tabs: [
//                           Tab(
//                             child: Text(
//                               "Running Shoes",
//                               style: TextStyle(
//                                   color: AppColor.whiteColor, fontSize: 14.sp),
//                             ),
//                           ),
//                           Tab(
//                             child: Text(
//                               "Casual Shoes",
//                               style: TextStyle(
//                                   color: AppColor.whiteColor, fontSize: 14.sp),
//                             ),
//                           ),
//                           Tab(
//                             child: Text(
//                               "Hiking Shoes",
//                               style: TextStyle(
//                                   color: AppColor.whiteColor, fontSize: 14.sp),
//                             ),
//                           ),
//                         ]),
//                     Container(
//                       height: 37.h,
//                       width: MediaQuery.of(context).size.width,
//                       child: TabBarView(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               ContainerWidget().paddingOnly(left: 5.w),
//                               ContainerWidget().paddingOnly(right: 5.w)
//                             ],
//                           ).paddingOnly(top: 1.h),
//                           Text(""),
//                           Text(""),
//                         ],
//                       ),
//                     )
//                   ],
//                 )).paddingOnly(top: 1.h),
//             Container(
//               child: Image.asset("assets/images/ad.png"),
//               decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(10)),
//             )
//           ],
//         )));
//   }
// }
