import 'package:flutter/material.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/views/appstyles/styles.dart';

class BookingsScreen extends StatelessWidget {
  static const id = "/bookings";
  const BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bookings",
          style: appTextStyle(
            fontSize: 20,
            color: AppColors.blackColor,
            weight: fBold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text("Bookings Screen"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
      ),
    );
  }
}

enum bookinStatus {
  pending,
  completed,
  received,
  canceled,
}
