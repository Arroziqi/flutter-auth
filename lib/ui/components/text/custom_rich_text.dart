import 'package:auth_app/ui/shared/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key, required this.text, required this.textToDisplay, required this.address});

  final String text;
  final String textToDisplay;
  final String address;

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
        text: text,
        style: roboto.copyWith(
            fontSize: 16
        ),
        children: [TextSpan(
            text: textToDisplay,
            style: roboto.copyWith(
              fontSize: 16,
              fontWeight: FontWeights.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = (){
                Navigator.pushNamed(context, address);
              }
        )]
    ));
  }
}
