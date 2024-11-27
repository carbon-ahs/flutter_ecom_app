import 'package:ecom_app/common/helper/navigator/app_navigator.dart';
import 'package:ecom_app/common/widgets/appbar/app_bar.dart';
import 'package:ecom_app/common/widgets/button/basic_app_button.dart';
import 'package:ecom_app/core/configs/theme/app_colors.dart';
import 'package:ecom_app/presentation/auth/pages/enter_password.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
            _forgotPasswordText(context),
            SizedBox(height: 20),
            _emailField(context),
            SizedBox(height: 20),
            _continueButton(context),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _forgotPasswordText(BuildContext context) {
    return Text(
      "Forgot Password",
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
}
