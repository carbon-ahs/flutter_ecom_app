import 'package:ecom_app/common/widgets/appbar/app_bar.dart';
import 'package:ecom_app/common/widgets/button/basic_app_button.dart';
import 'package:ecom_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

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
            _signInText(context),
            SizedBox(height: 20),
            _passwordField(context),
            SizedBox(height: 20),
            _continueButton(),
            SizedBox(height: 20),
            _forgotPassword(context),
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

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Enter Password',
      ),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(
      onPressed: () {},
      title: 'Continue',
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: "Forgot password? "),
        TextSpan(
          text: "Reset!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ]),
    );
  }
}
