import 'package:flutter/material.dart';
import 'package:notsapp/widges/AConstans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxline = 1, this.onSaved});

  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this field is requerd';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: kpraimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: kpraimaryColor),
        border: biuldBorder(),
        enabledBorder: biuldBorder(),
        focusedBorder: biuldBorder((kpraimaryColor)),
      ),
    );
  }

  OutlineInputBorder biuldBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
