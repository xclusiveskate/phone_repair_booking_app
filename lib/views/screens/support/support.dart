import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  static const id = "/support";
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text("Support Screen"),
        ),
      ),
    );
  }
}
