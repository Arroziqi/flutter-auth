
import 'package:auth_app/ui/auth/signup/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:auth_app/ui/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'ui/auth/signin/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Menggunakan Inter sebagai font default di seluruh aplikasi
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme, // Ini akan mempertahankan styling default
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}
