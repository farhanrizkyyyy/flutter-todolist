// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/components/main_appbar.dart';
import 'package:todolist/components/main_button.dart';
import 'package:todolist/components/main_text_field.dart';
import 'package:todolist/configs/palette.config.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/logo.svg'),
          Column(
            children: [
              _buildForm(),
              SizedBox(height: 40),
              MainButton(
                onPressed: () => Navigator.pushNamed(context, '/home'),
                text: 'Sign In',
              ),
              SizedBox(height: 10),
              _buildRichText(context),
            ],
          )
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
          hintText: 'Enter your password',
          suffixIcon: Icon(
            Icons.lock_outline,
            color: Palette.darkPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildRichText(BuildContext context) {
    return RichText(
      text: TextSpan(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TextSpan(
            text: 'Don\'t\ have an account?',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Palette.textPlaceholder,
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.pushNamed(context, '/sign-up'),
            text: ' Sign Up',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Palette.primary,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
