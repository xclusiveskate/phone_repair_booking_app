import 'package:flutter/material.dart';
import 'package:repair_app/constants/colors.dart';

extension WidgetExtension on Widget {
  Divider divider() {
    return const Divider(
      height: 0.5,
      thickness: 0.5,
      color: AppColors.blueColor,
    );
  }

  MaterialPageRoute get pagesRoute =>
      MaterialPageRoute(builder: (context) => this);
}
