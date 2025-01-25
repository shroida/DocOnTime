import 'package:doc_on_time/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle black24Weight700 = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: const Color(0xFF242424));
  static TextStyle blue32Weight700 = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManagers.mainBlue);
  static TextStyle grey13Reg = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.normal,
      color: ColorsManagers.grey);
  static TextStyle white16SemiBole = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color:Colors.white);
}
