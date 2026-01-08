import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle title18_600w({Color? color}) => GoogleFonts.roboto(fontSize: 18.sp,fontWeight: FontWeight.w600,color: color);
  static TextStyle title16_400w({Color? color}) => GoogleFonts.roboto(fontSize: 16.sp,fontWeight: FontWeight.w400,color: color);
}

extension TextStyleExtension on TextStyle {
  TextStyle withColor(Color color) => copyWith(color: color);
}


String? passwordValidator(String? value){
  if(value == null || value.isEmpty){
    return 'Please enter a valid password';
  } else{
    return 'wrong password';
  }
}