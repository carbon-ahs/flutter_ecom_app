import 'package:ecom_app/common/helper/navigator/app_navigator.dart';
import 'package:ecom_app/common/widgets/appbar/app_bar.dart';
import 'package:ecom_app/common/widgets/button/basic_app_button.dart';
import 'package:ecom_app/core/configs/theme/app_colors.dart';
import 'package:ecom_app/presentation/auth/pages/enter_password.dart';
import 'package:ecom_app/presentation/auth/pages/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _createAccounntText(context),
            SizedBox(height: 20),
            _firstNameField(context),
            SizedBox(height: 20),
            _lastNameField(context),
            SizedBox(height: 20),
            _emailField(context),
            SizedBox(height: 20),
            _passwordField(context),
            SizedBox(height: 20),
            _continueButton(context),
            SizedBox(height: 20),
            _signIn(context),
          ],
        ),
      ),
    );
  }

  Widget _createAccounntText(BuildContext context) {
    return Text(
      "Create Account",
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'First Name',
      ),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Last Name',
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email',
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Password',
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, EnterPasswordPage());
      },
      title: 'Continue',
    );
  }

  Widget _signIn(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: "Do you have an account? "),
        TextSpan(
          text: "Sign in.",
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              AppNavigator.push(context, SignInPage());
            },
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
