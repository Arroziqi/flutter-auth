import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.pushNamed(context, "/signin");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // Image.asset()
              Text("Ozi Auth"),
            ],
          ),
          Column(
            children: [
              Text("Welcome MaBoy!"),
              Text("This a simple authentication app")
            ],
          )
        ],
      ),
    );
  }
}
