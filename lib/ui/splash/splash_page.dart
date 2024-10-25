import 'dart:async';

import 'package:auth_app/ui/auth/components/app_name.dart';
import 'package:auth_app/ui/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  final appName = 'OZI AUTH';
  final imageUrl = 'assets/images/image-splash.png';
  final headingText = 'Welcome MaBoy!';
  final descriptionText = 'This a simple authentication app';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, "/signin");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset(widget.imageUrl),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.15),
                    child: AppName( appName: widget.appName,),
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.headingText,
                    style: const TextStyle(fontWeight: FontWeights.bold, fontSize: 24),
                  ),
                  const Gap(20),
                  Text(
                    widget.descriptionText,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
