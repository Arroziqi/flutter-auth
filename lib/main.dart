
import 'package:auth_app/ui/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'ui/auth/signin/sign_in_page.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/signin': (context) => SignInPage(),
        '/signup': (context) => SignUpPage(),
      },
    );
  }
}
