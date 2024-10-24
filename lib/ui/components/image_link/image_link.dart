import 'package:flutter/material.dart';

class ImageLink extends StatelessWidget {
  const ImageLink(
      {super.key,
      required this.imageUrl,
      this.width = 50,
      this.height = 50,
      this.onTap});
  final String imageUrl;
  final double width;
  final double height;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imageUrl,
        width: width,
        height: height,
      ),
    );
  }
}
