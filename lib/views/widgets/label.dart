import 'package:flutter/material.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/views/appstyles/styles.dart';

class LabelText extends StatelessWidget {
  final String text;
  const LabelText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: appTextStyle(
          fontSize: size14,
          color: AppColors.primaryColor,
          weight: fBold,
        ),
      ),
    );
  }
}
