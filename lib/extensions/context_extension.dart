import 'package:flutter/material.dart';
import 'package:repair_app/constants/colors.dart';

extension Context on BuildContext {
  showCustomSnackBar({required String content, Color? backgroundColor}) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          content: Text(content),
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
        ),
      );
}
