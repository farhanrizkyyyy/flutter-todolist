// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/configs/palette.config.dart';

AppBar appBar(BuildContext context,
    {Color? backgroundColor, List<Widget>? actions, bool backButton = false}) {
  return AppBar(
    backgroundColor: backgroundColor ?? Colors.white,
    leading: backButton
        ? IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.chevron_left,
              size: 35,
            ),
            color: Palette.darkPrimary,
          )
        : Container(),
    actions: actions,
    elevation: 0,
  );
}
