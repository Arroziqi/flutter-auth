import 'package:auth_app/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.text, this.onPressed});
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 74, vertical: 13),
      decoration: BoxDecoration(
        gradient: linearGradient,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: roboto.copyWith(
              fontWeight: FontWeights.bold, color: Colors.white),
        ),
      ),
    );
  }
}
