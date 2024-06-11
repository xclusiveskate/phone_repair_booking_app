import 'package:flutter/material.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/views/appstyles/styles.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? radius;
  final Size? size;
  const CustomOutlinedButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.backgroundColor,
    this.radius,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.primaryColor,
        elevation: 0.5,
        minimumSize: size ?? const Size(double.infinity, 50),
        shape: rectangleBorder(
          radius: radius ?? brDefault.toDouble(),
        ),
      ),
      child: child,
    );
  }
}
