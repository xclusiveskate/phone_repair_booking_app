import 'package:flutter/material.dart';
import 'package:repair_app/views/appstyles/styles.dart';

class AppCard extends StatelessWidget {
  final double radius;
  final Color cardColor;
  final Widget child;
  final double cardHeight;
  final double cardWidth;
  const AppCard(
      {super.key,
      required this.radius,
      required this.cardColor,
      required this.child,
      required this.cardHeight,
      required this.cardWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: cardHeight,
        width: cardWidth,
        child: Card(
          color: cardColor,
          elevation: 0.5,
          shape: rectangleBorder(
            radius: radius,
          ),
          child: child,
        ),
      ),
    );
  }
}
