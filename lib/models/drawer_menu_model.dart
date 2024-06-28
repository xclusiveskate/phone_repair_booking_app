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
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(),
          ));
    },
  ),
  MenuItem(
    title: "Bookings",
    icon: Icons.book,
    function: (BuildContext context) {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookingsScreen(),
          ));
    },
  ),
  MenuItem(
    title: "Notification",
    icon: Icons.notifications,
    function: (BuildContext context) {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotificationScreen(),
          ));
    },
  ),
  MenuItem(
    title: "Support",
    icon: Icons.support,
    function: (BuildContext context) {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SupportScreen(),
          ));
    },
  ),
];
