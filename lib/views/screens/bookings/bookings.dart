import 'package:flutter/material.dart';

class BookingsScreen extends StatelessWidget {
  static const id = "/bookings";
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text("Bookings Screen"),
        ),
      ),
    );
  }
}
