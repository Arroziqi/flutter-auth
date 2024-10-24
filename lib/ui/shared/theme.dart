import 'package:flutter/material.dart';

TextStyle helvatica = const TextStyle(fontFamily: 'Helvetica');
TextStyle prime = const TextStyle(fontFamily: "Prime");
TextStyle sfPro = const TextStyle(fontFamily: "SFPRO");
TextStyle roboto = const TextStyle(fontFamily: "Roboto");

class FontWeights {
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight normal = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}

Color primary = const Color(0xfe8EDDFF);
Color accent = const Color(0xfe7A9EAE);
Color secondaryAccent = const Color(0xfe769DAD);
Color grey = const Color(0xfe515151);
Color secondaryGrey = const Color(0xfeF2F2F2);
LinearGradient linearGradient = LinearGradient(
  colors: [primary, accent],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
