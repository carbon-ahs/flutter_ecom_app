import 'package:ecom_app/common/helper/navigator/app_navigator.dart';
import 'package:ecom_app/common/widgets/button/basic_app_button.dart';
import 'package:ecom_app/core/configs/theme/app_colors.dart';
import 'package:ecom_app/presentation/auth/pages/enter_password.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signInText(context),
            SizedBox(height: 20),
            _emailField(context),
            SizedBox(height: 20),
            _continueButton(context),
            SizedBox(height: 20),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _signInText(BuildContext context) {
    return Text(
      "Sign in",
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Email',
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

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: "Don't you have an account? "),
        TextSpan(
          text: "Create one!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
