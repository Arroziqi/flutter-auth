import 'package:auth_app/ui/shared/theme.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({super.key, required this.hintText, required this.prefixIcon});

  final String hintText;
  final Icon prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: grey,
        hintText: hintText,
        hintStyle: TextStyle(color: grey),
        contentPadding: const EdgeInsets.all(17),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: grey),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: true,
        fillColor: secondaryGrey,
      ),
      style: roboto,
    );
  }
}
