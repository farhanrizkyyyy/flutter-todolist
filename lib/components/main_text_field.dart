// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/configs/palette.config.dart';

class MainTextField extends StatelessWidget {
  MainTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.isPassword = false,
  }) : super(key: key);

  TextEditingController? controller;
  String? hintText;
  Widget? suffixIcon;
  bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      cursorHeight: 22,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
          borderSide: BorderSide(
            color: Palette.darkPrimary,
            width: 1.2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
          borderSide: BorderSide(
            color: Palette.primary,
            width: 1.2,
          ),
        ),
        hintText: hintText,
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 16.0),
          child: suffixIcon ?? Container(),
        ),
      ),
    );
  }
}
