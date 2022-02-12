// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/configs/palette.config.dart';

class MainButton extends StatelessWidget {
  MainButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.width,
  }) : super(key: key);

  double? width;
  void Function() onPressed;
  String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      // padding: EdgeInsets.all(16),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Palette.primary),
          padding: MaterialStateProperty.all(EdgeInsets.all(16)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
        ),
        onPressed: (onPressed),
        child: Text(
          text,
          style: _textStyle(),
        ),
      ),
    );
  }

  TextStyle _textStyle() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }
}
