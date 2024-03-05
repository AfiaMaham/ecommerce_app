import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../helpers/constants.dart';

class FieldOfText extends StatelessWidget {
  String? text;

  FieldOfText({this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 7.w),
          fillColor: AppColor.whiteColor,
          filled: true,
          hintText: text,
          hintStyle: TextStyle(color: AppColor.hintColor),
          suffixIcon: Ink(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink,
            ),
            child: Icon(Icons.search),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
