import 'package:ecom_app/common/helper/navigator/app_navigator.dart';
import 'package:ecom_app/common/widgets/appbar/app_bar.dart';
import 'package:ecom_app/common/widgets/button/basic_app_button.dart';
import 'package:ecom_app/data/auth/models/user_creation_req.dart';
import 'package:ecom_app/presentation/auth/pages/gender_and_age_selection.dart';
import 'package:ecom_app/presentation/auth/pages/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 40,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
        AppNavigator.push(
          context,
          GenderAndAgeSelectionPage(
            userCreationReq: UserCreationReq(
              firstName: _firstNameCon.text,
              lastName: _lastNameCon.text,
              email: _emailCon.text,
              password: _passwordCon.text,
            ),
          ),
        );
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
