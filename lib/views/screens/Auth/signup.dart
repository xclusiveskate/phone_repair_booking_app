import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
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
  static const id = "/signup";
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
    return Scaffold(
      backgroundColor: AppColors.backgroundColor2.withOpacity(0.95),
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor2.withOpacity(0.95),
        title: Text(
          "Sign Up",
          style: appTextStyle(
            fontSize: 24,
            weight: fBold,
            color: AppColors.blackColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AuthOptions(
                    borderColor: AppColors.primaryColor,
                    childColor: AppColors.backgroundColor,
                    text: "Sign Up",
                    textColor: AppColors.blueColor,
                    isSignUp: true,
                  ),
                  AuthOptions(
                    borderColor: AppColors.blackColor,
                    childColor: AppColors.blackColor,
                    text: "Sign In",
                    textColor: AppColors.blackColor,
                    isSignUp: false,
                  ),
                ],
              ),
              30.height,
              const LabelText(text: "Email Address:"),
              size10.height,
              CustomTextFormField(
                controller: emailController!,
                hintText: "Enter your email address",
                isPassword: false,
              ),
              30.height,
              const LabelText(text: "Create Password:"),
              size10.height,
              CustomTextFormField(
                controller: passwordController!,
                hintText: "More than 8 characters",
                isPassword: true,
              ),
              10.height,
              Row(
                children: [
                  Checkbox(
                      value: false,
                      onChanged: (value) {
                        value = !value!;
                        setState(() {});
                      }),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Accept ',
                          style: appTextStyle(
                              fontSize: 14,
                              color: AppColors.blackColor,
                              weight: f500),
                        ),
                        TextSpan(
                          text: 'Terms of Service',
                          style: const TextStyle(
                            color: Colors.blue,
                            // decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pushNamed(context,
                                '/terms_of_service'), // Navigate to terms of service page
                        ),
                        TextSpan(
                          text: ' and ',
                          style: appTextStyle(
                              fontSize: 14,
                              color: AppColors.blueColor,
                              weight: f500),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: appTextStyle(
                              fontSize: 14,
                              color: AppColors.blueColor,
                              weight: f400),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pushNamed(context,
                                '/privacy_policy'), // Navigate to privacy policy page
                        ),
                        TextSpan(
                          text: '.',
                          style: appTextStyle(
                              fontSize: 14,
                              color: AppColors.blackColor,
                              weight: f500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              10.height,
              CustomElevatedButton(
                child: Text(
                  "Get Started",
                  style: appTextStyle(
                      fontSize: size14,
                      weight: f700,
                      color: AppColors.whiteColor),
                ),
                onPressed: () {},
              ),
              14.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account??"),
                  CustomTextButton(
                    onPressed: () {},
                    text: "Sign In",
                  ),
                ],
              ),
              22.height,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const Divider(
                            height: 0.5,
                            // indent: 40.0,
                            thickness: 1,
                            color: AppColors.blueColor,
                          )),
                    ),
                    12.width,
                    const Expanded(
                      child: Text("Quick Sign Up"),
                    ),
                    Expanded(
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const Divider(
                            height: 0.5,
                            // indent: 40.0,
                            thickness: 1,
                            color: AppColors.blueColor,
                          )),
                    )
                  ],
                ),
              ),
              26.height,
              Row(
                children: [
                  Expanded(
                    child: CustomOutlinedButton(
                      radius: br30,
                      backgroundColor: AppColors.transparentColor,
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
                      onPressed: () {},
                    ),
                  ),
                  14.width,
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
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container AuthOptions(
      {required Color borderColor,
      required Color childColor,
      required String text,
      required Color textColor,
      required bool isSignUp}) {
    return Container(
      height: 140,
      width: 180,
      decoration: BoxDecoration(
        border: Border.all(
            color: borderColor, width: 0.5, style: BorderStyle.solid),
        borderRadius: circularRadius(size10),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: SvgPicture.asset(
                    "placeholder".svgImage,
                    color: childColor,
                  ),
                ),
                Text(
                  text,
                  style: appTextStyle(
                    fontSize: 26,
                    color: textColor,
                    weight: f700,
                  ),
                )
              ],
            ),
          ),
          isSignUp
              ? const Positioned(
                  left: 140,
                  top: 10,
                  child: Icon(
                    Icons.check_circle_rounded,
                    color: AppColors.primaryColor,
                    size: 30,
                  ),
                )
              : const SizedBox.square()
        ],
      ),
    );
  }
}
