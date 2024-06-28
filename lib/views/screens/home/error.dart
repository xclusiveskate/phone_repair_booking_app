import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String name;
  const ErrorScreen({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$name page does not exist"),
      ),
    );
  }
}
