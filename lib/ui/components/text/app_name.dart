import 'package:auth_app/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  const AppName({super.key, required this.appName});

  final String appName;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ShaderMask(
      shaderCallback: (bounds) {
        return linearGradient.createShader(bounds);
      },
      child: Text(
        appName,
        style: prime.copyWith(
          fontSize: (screenWidth > 390) ? 65 : 50,
          fontWeight: FontWeights.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}
