import 'package:auth_app/ui/components/image_link/image_link.dart';
import 'package:auth_app/ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupOauth2 extends StatelessWidget {
  const SignupOauth2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Or sign up using',
          style: helvatica.copyWith(fontSize: 15),
        ),
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
}
