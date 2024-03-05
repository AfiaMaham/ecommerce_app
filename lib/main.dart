import 'package:ecommerce_app/screens/screen1.dart';
import 'package:ecommerce_app/screens/categories.dart';
import 'package:ecommerce_app/screens/screen.dart';
import 'package:ecommerce_app/screens/detail_product.dart';
import 'package:ecommerce_app/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Categories(),
      );
    });
  }
}
