// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todolist/components/main_appbar.dart';
import 'package:todolist/components/main_button.dart';
import 'package:todolist/components/main_text_field.dart';
import 'package:todolist/configs/palette.config.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return appBar(
      context,
      backButton: true,
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/logo.svg'),
          Column(
            children: [
              _buildForm(),
              SizedBox(height: 40),
              MainButton(
                onPressed: () => Navigator.pushNamed(context, '/'),
                text: 'Sign Up',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        MainTextField(
          hintText: 'Enter your username',
          suffixIcon: Icon(
            Icons.login,
            color: Palette.darkPrimary,
          ),
        ),
        SizedBox(height: 20),
        MainTextField(
          hintText: 'Enter your full name',
          suffixIcon: Icon(
            Icons.person_outline,
            color: Palette.darkPrimary,
          ),
        ),
        SizedBox(height: 20),
        MainTextField(
          hintText: 'Enter your password',
          suffixIcon: Icon(
            Icons.lock_outline,
            color: Palette.darkPrimary,
          ),
        ),
      ],
    );
  }
}
