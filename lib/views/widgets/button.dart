import 'package:flutter/material.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/views/appstyles/styles.dart';

class AppElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? radius;
  final Size? size;
  const AppElevatedButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.backgroundColor,
    this.radius,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primaryColor,
          elevation: 0.5,
          minimumSize: size ?? const Size(double.infinity, 50),
          shape: rectangleBorder(
            radius: radius ?? brDefault.toDouble(),
          ),
        ),
        child: child,
      ),
    );
  }
}
