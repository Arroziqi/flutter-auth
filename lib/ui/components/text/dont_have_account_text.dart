import 'package:auth_app/ui/shared/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
        text: "Don't have an account? ",
        style: roboto.copyWith(
            fontSize: 16
        ),
        children: [TextSpan(
            text: "SignUp",
            style: roboto.copyWith(
              fontSize: 16,
              fontWeight: FontWeights.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = (){
                Navigator.pushNamed(context, "/signup");
              }
        )]
    ));
  }
}
