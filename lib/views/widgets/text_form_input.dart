import 'package:flutter/material.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/views/appstyles/styles.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  String? initialValue;
  TextInputType? textInputType;
  TextInputAction? textInputAction;
  FocusNode? focus;
  final Function(String)? validator;
  CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.initialValue,
      this.textInputType,
      this.textInputAction,
      this.focus,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue ?? "",
      focusNode: focus,
      style: appTextStyle(
        fontSize: size14.toDouble(),
        weight: fNormal,
      ),
      decoration: InputDecoration(
          hintText: hintText,
          border: outlineInputBorder(color: AppColors.transparentColor),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          errorBorder: outlineInputBorder(color: AppColors.warningColor)),
      keyboardType: textInputType ?? TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.continueAction,
      textAlignVertical: TextAlignVertical.center,
      validator: (value) => validator!(value ?? ""),
      // inputFormatters: [],
    );
  }
}
