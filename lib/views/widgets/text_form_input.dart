// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/views/appstyles/styles.dart';

class CustomTextFormField extends StatefulWidget {
  TextEditingController controller;
  String hintText;
  String? initialValue;
  TextInputType? textInputType;
  TextInputAction? textInputAction;
  FocusNode? focus;
  bool isPassword;
  final Function(String)? validator;
  CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.initialValue,
    this.textInputType,
    this.textInputAction,
    this.focus,
    this.validator,
    required this.isPassword,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      // initialValue: initialValue ?? "",
      focusNode: widget.focus,
      style: appTextStyle(
        fontSize: size14.toDouble(),
        weight: fNormal,
      ),
      obscureText: isVisible,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                icon: Icon(
                  isVisible ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.primaryColor,
                ),
              )
            : null,
        border: outlineInputBorder(color: AppColors.transparentColor),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        errorBorder: outlineInputBorder(
          color: AppColors.warningColor,
        ),
      ),
      keyboardType: widget.textInputType ?? TextInputType.text,
      // textInputAction: textInputAction ?? TextInputAction.continueAction,
      textAlignVertical: TextAlignVertical.center,
      validator: (value) => widget.validator!(value ?? ""),
      // inputFormatters: [],
    );
  }
}
