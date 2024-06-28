import 'package:flutter/material.dart';
import 'package:repair_app/extensions/widgets.dart';
import 'package:repair_app/views/screens/Auth/signin.dart';
import 'package:repair_app/views/screens/Auth/signup.dart';
import 'package:repair_app/views/screens/home/bookings.dart';
import 'package:repair_app/views/screens/home/error.dart';
import 'package:repair_app/views/screens/home/home.dart';
import 'package:repair_app/views/screens/home/notification.dart';
import 'package:repair_app/views/screens/home/profile.dart';
import 'package:repair_app/views/screens/home/support.dart';
import 'package:repair_app/views/screens/onboarding/onboarding.dart';
import 'package:repair_app/views/screens/onboarding/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> routes(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.id:
        return SplashScreen().pagesRoute;
      case OnboardingScreen.id:
        return OnboardingScreen().pagesRoute;
      case SignUpPage.id:
        return SignUpPage().pagesRoute;
      case SignInPage.id:
        return SignInPage().pagesRoute;
      case HomePage.id:
        return HomePage().pagesRoute;
      case BookingsScreen.id:
        return BookingsScreen().pagesRoute;
      case ProfileScreen.id:
        return ProfileScreen().pagesRoute;
      case NotificationScreen.id:
        return NotificationScreen().pagesRoute;
      case SupportScreen.id:
        return SupportScreen().pagesRoute;

      default:
        return ErrorScreen(name: settings.name!).pagesRoute;
    }
  }
}
