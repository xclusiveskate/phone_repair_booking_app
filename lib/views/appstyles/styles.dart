import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';

//returns circular radius
BorderRadius circularRadius(radius) => BorderRadius.circular(radius);

//styling for texts
TextStyle appTextStyle({
  required double? fontSize,
  Color? color,
  FontWeight? weight,
}) {
  return GoogleFonts.poppins(
    textStyle: TextStyle(
        fontSize: fontSize ?? size12.toDouble(),
        color: color ?? AppColors.textColor,
        fontWeight: weight ?? f400),
  );
}

//returns a rectangular shape
RoundedRectangleBorder rectangleBorder({
  BorderRadius? borderRadius,
  required double radius,
  double? borderWidth,
}) {
  return RoundedRectangleBorder(
      borderRadius: borderRadius ?? circularRadius(radius),
      side: borderWidth != null
          ? BorderSide(
              width: borderWidth,
              color: AppColors.primaryColor,
            )
          : BorderSide.none);
}

OutlineInputBorder outlineInputBorder({
  int? radius,
  Color? color,
}) {
  return OutlineInputBorder(
      borderRadius: circularRadius(radius ?? brDefault),
      borderSide: BorderSide(
          color: color ?? AppColors.primaryColor,
          width: 0.5,
          style: BorderStyle.solid));
}
