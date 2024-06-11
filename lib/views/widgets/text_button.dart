import 'package:flutter/material.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/views/appstyles/styles.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: appTextStyle(
            fontSize: size24,
            weight: f600,
            color: AppColors.blueColor,
          ),
        ));
  }
}
