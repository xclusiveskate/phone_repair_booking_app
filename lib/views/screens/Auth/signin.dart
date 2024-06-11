import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/extensions/int_extension.dart';
import 'package:repair_app/extensions/string_extension.dart';
import 'package:repair_app/views/appstyles/styles.dart';
import 'package:repair_app/views/widgets/button.dart';
import 'package:repair_app/views/widgets/label.dart';
import 'package:repair_app/views/widgets/outined_button.dart';
import 'package:repair_app/views/widgets/text_button.dart';
import 'package:repair_app/views/widgets/text_form_input.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController? emailController;
  late TextEditingController? passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController!.dispose();
    passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(
              top: 32.0, bottom: 0.0, left: 0.0, right: 0.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Let’s get started",
                            style: appTextStyle(
                                fontSize: 26,
                                color: AppColors.blackColor,
                                weight: f600)),
                        14.height,
                        Text(
                          "We are here to rescue your devices from the clutches of damage, restoring them to their former glory and beyond.",
                          textAlign: TextAlign.center,
                          style: appTextStyle(
                              fontSize: 16,
                              color: AppColors.blackColor,
                              weight: f400),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(size10),
                    child: Column(
                      children: [
                        Text(
                          "Sign In",
                          style: appTextStyle(
                            fontSize: 26,
                            color: AppColors.blackColor,
                            weight: f600,
                          ),
                        ),
                        const LabelText(text: "Email address"),
                        size10.height,
                        CustomTextFormField(
                          controller: emailController!,
                          hintText: "Enter your email address",
                          isPassword: false,
                        ),
                        size16.height,
                        const LabelText(text: "Password"),
                        size10.height,
                        CustomTextFormField(
                          controller: passwordController!,
                          hintText: "Enter your password",
                          isPassword: true,
                        ),
                        26.height,
                        AppElevatedButton(
                            child: Text(
                              "Sign In",
                              style: appTextStyle(
                                  fontSize: size14,
                                  weight: f700,
                                  color: AppColors.whiteColor),
                            ),
                            onPressed: () {}),
                        20.height,
                        CustomTextButton(
                          onPressed: () {},
                          text: "Forgot Password ??",
                        ),
                        // 10.height,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Yet to have an account??"),
                            CustomTextButton(
                              onPressed: () {},
                              text: "Sign Up",
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    child: const Divider(
                                      height: 0.5,
                                      // indent: 40.0,
                                      thickness: 0.5,
                                      color: AppColors.blueColor,
                                    )),
                              ),
                              14.width,
                              const Expanded(
                                child: Text("Quick Sign Up"),
                              ),
                              Expanded(
                                child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    child: const Divider(
                                      height: 0.5,
                                      // indent: 40.0,
                                      thickness: 0.5,
                                      color: AppColors.blueColor,
                                    )),
                              )
                            ],
                          ),
                        ),
                        20.height,
                        Row(
                          children: [
                            Expanded(
                              child: CustomOutlinedButton(
                                  radius: br30,
                                  backgroundColor: AppColors.whiteColor,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        child: SvgPicture.asset(
                                          width: size30,
                                          height: size30,
                                          "assets/images/google.svg",
                                        ),
                                      ),
                                      8.width,
                                      const Text("Google"),
                                    ],
                                  ),
                                  onPressed: () {}),
                            ),
                            12.width,
                            Expanded(
                              child: CustomOutlinedButton(
                                  radius: br30,
                                  backgroundColor: AppColors.transparentColor,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        width: size30,
                                        height: size30,
                                        "facebook".svgImage,
                                      ),
                                      8.width,
                                      const Text("Facebook"),
                                    ],
                                  ),
                                  onPressed: () {}),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
