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

  alertDialog() {
    return showDialog(
        context: this,
        builder: (context) {
          return const AlertDialog();
        });
  }

  get mediaQuery => MediaQuery.of(this).size.height;
}
