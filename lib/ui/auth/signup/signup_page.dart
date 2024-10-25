import 'package:auth_app/ui/auth/components/signup_oauth2.dart';
import 'package:auth_app/ui/auth/components/auth_button.dart';
import 'package:auth_app/ui/auth/components/text_input.dart';
import 'package:auth_app/ui/components/text/custom_rich_text.dart';
import 'package:auth_app/ui/shared/env.dart';
import 'package:auth_app/ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  Widget buildHeading() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Let's Get Started!",
          style: roboto.copyWith(fontSize: 24, fontWeight: FontWeights.bold),
        ),
        Text(
          "Create an account on $appName to get all features",
          style: roboto.copyWith(
            color: grey,
          ),
        )
      ],
    );
  }

  Widget buildForm() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextInput(
            hintText: "Username", prefixIcon: Icon(Icons.person_2_outlined)),
        Gap(25),
        TextInput(hintText: "Email", prefixIcon: Icon(Icons.email_outlined)),
        Gap(25),
        TextInput(hintText: "Password", prefixIcon: Icon(Icons.lock_outlined)),
        Gap(25),
        TextInput(
            hintText: "Confirm Password",
            prefixIcon: Icon(Icons.lock_outlined)),
        Gap(33),
        AuthButton(text: "SIGN UP"),
      ],
    );
  }

  Widget alreadyHaveAnAccount() {
    return const CustomRichText(
        text: "Already have an account? ",
        textToDisplay: "Login here",
        address: "/signin");
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            Gap(screenHeight * 0.13),
            buildHeading(),
            const Gap(30),
            buildForm(),
            const Gap(30),
            const SignupOauth2(),
            const Gap(48),
            alreadyHaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
