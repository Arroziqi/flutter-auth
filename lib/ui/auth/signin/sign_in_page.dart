import 'package:auth_app/ui/components/button/auth_button.dart';
import 'package:auth_app/ui/components/image_link/image_link.dart';
import 'package:auth_app/ui/components/input/text/text_input.dart';
import 'package:auth_app/ui/components/text/app_name.dart';
import 'package:auth_app/ui/components/text/dont_have_account_text.dart';
import 'package:auth_app/ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  final imageUrl = 'assets/images/double-rec.png';
  final orgName = 'OZI AUTH';

  @override
  Widget build(BuildContext context) {
    Widget buildForm() {
      return Form(
        child: Column(
          children: [
            const TextInput(
              hintText: "Username",
              prefixIcon: Icon(Icons.person_2_outlined),
            ),
            const Gap(25),
            const TextInput(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock_outlined),
            ),
            const Gap(7),
            SizedBox(
              width: double.infinity,
              child: Text(
                'Forgot Password?',
                style: roboto,
                textAlign: TextAlign.end,
              ),
            ),
            const Gap(32),
            const AuthButton(text: "SIGN IN"),
          ],
        ),
      );
    }

    Widget buildOAuth2(){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Or sign up using', style: helvatica.copyWith(fontSize: 15),),
          const Gap(20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageLink(imageUrl: 'assets/images/fb.png'),
              Gap(25),
              ImageLink(imageUrl: 'assets/images/google.png'),
              Gap(25),
              ImageLink(imageUrl: 'assets/images/apple.png'),
            ],
          )
        ],
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Image.asset(imageUrl),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppName(
                    appName: orgName,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Welcome back!',
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeights.bold,
                            fontSize: 24),
                      ),
                      const Gap(18),
                      Text(
                        'Login to existing $orgName account',
                        style: TextStyle(
                            fontFamily: "Roboto", fontSize: 14, color: grey),
                      )
                    ],
                  ),
                  buildForm(),
                  buildOAuth2(),
                  const DontHaveAccountText()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
