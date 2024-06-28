import 'package:flutter/material.dart';
import 'package:repair_app/views/screens/home/bookings.dart';
import 'package:repair_app/views/screens/home/notification.dart';
import 'package:repair_app/views/screens/home/profile.dart';
import 'package:repair_app/views/screens/home/support.dart';

class MenuItem {
  final String title;
  final IconData icon;
  final Function(BuildContext context) function;

  const MenuItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.function,
  });
}

List<MenuItem> items = [
  MenuItem(
    title: "Home",
    icon: Icons.home,
    function: (BuildContext context) {
      Navigator.pop(context);
    },
  ),
  MenuItem(
    title: "Profile",
    icon: Icons.person,
    function: (BuildContext context) {
      Navigator.popAndPushNamed(
        context,
        ProfileScreen.id,
      );
      // Navigator.pop(context);
      // Navigator.pushNamed(
      //   context,
      //   ProfileScreen.profile,
      // );
    },
  ),
  MenuItem(
    title: "Bookings",
    icon: Icons.book,
    function: (BuildContext context) {
      Navigator.popAndPushNamed(
        context,
        BookingsScreen.id,
      );
      // Navigator.pop(context);
      // Navigator.pushNamed(
      //   context,
      //   BookingsScreen.bookings,
      // );
    },
  ),
  MenuItem(
    title: "Notification",
    icon: Icons.notifications,
    function: (BuildContext context) {
      // Navigator.pop(context);
      Navigator.popAndPushNamed(
        context,
        NotificationScreen.id,
      );
      // Navigator.pushNamed(
      //   context,
      //   NotificationScreen.notification,
      // );
    },
  ),
  MenuItem(
    title: "Support",
    icon: Icons.support,
    function: (BuildContext context) {
      Navigator.popAndPushNamed(
        context,
        SupportScreen.id,
      );
      // Navigator.pop(context);
      // Navigator.pushNamed(
      //   context,
      //   SupportScreen.support,
      // );
    },
  ),
];
