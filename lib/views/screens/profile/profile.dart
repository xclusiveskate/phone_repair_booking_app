import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const id = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text("Profile Screen"),
        ),
      ),
    );
  }
}
