import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static const id = "/notification";
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text("Notification Screen"),
        ),
      ),
    );
  }
}
