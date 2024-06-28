import 'package:flutter/material.dart';
import 'package:repair_app/extensions/string_extension.dart';
import 'package:repair_app/views/screens/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  static const id = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  //create a nullable animation controller
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    //instantiate the  controller
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..forward();

//add a listener to the contoller
    animationController!.addListener(() {
      //check the status of the controller if it's running or is completed
      if (animationController!.status == AnimationStatus.completed) {
        //Navigate to the next page
        Navigator.pushReplacementNamed(context, OnboardingScreen.id);
      }
    });
  }

  checkIfUserExistInStorage() {}
  @override
  void dispose() {
    super.dispose();
    animationController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
              animation: animationController!,
              builder: (_, child) {
                return Transform.rotate(
                  angle: animationController!.value,
                  child: Image.asset('logo'.pngImage),
                );
              }),
          // 12.height,
          // RotationTransition(
          //   turns: Tween(begin: 0.0, end: 1.0).animate(animationController!),
          //   child: Image.asset('logo'.pngImage),
          // ),
        ],
      )),
    ));
  }
}
