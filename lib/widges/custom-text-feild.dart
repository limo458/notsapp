import 'package:flutter/material.dart';
import 'package:notsapp/widges/Constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxline = 1});
  final String hint;
  final int maxline;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KpraimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: KpraimaryColor),
        border: biuldBorder(),
        enabledBorder: biuldBorder(),
        focusedBorder: biuldBorder((KpraimaryColor)),
      ),
    );
  }

  OutlineInputBorder biuldBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
