import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/extensions/string_extension.dart';
import 'package:repair_app/views/appstyles/styles.dart';
import 'package:repair_app/views/screens/Auth/signin.dart';
// import 'package:repair_app/models/introduction.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<Introduction>? list = [
    Introduction(
      imageUrl: "title".pngImage,
      title: "Introducing TECH-FIX!!",
      subTitle: "Where your gadgets find their ultimate superhero! ",
    ),
    Introduction(
      imageUrl: "gadget".pngImage,
      title: "From Broken to Brilliant",
      subTitle: "Unleash the Power of Your Gadgets Again.",
    ),
    Introduction(
      imageUrl: "appointment".pngImage,
      title: "Schedule  Appointment",
      subTitle:
          "Experience the convenience of our services by booking an appointment today. Secure your spot and let our skilled technicians take care of your device. Don't wait.",
    ),
    Introduction(
      imageUrl: "pointinggirl".pngImage,
      title: "Let’s get started",
      subTitle:
          "We are here to rescue your devices from the clutches of damage, restoring them to their former glory and beyond.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //using a ready made package as intro screen
      body: IntroScreenOnboarding(
        introductionList: list,
        backgroudColor: AppColors.backgroundColor2,
        onTapSkipButton: () {
          //Go to sign in screen
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SignInPage()));
        },
        skipTextStyle: appTextStyle(
          fontSize: 20,
          color: AppColors.blueColor,
        ),
      ),
    );
  }
}
