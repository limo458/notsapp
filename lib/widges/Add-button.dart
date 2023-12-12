import 'package:flutter/material.dart';
import 'package:notsapp/widges/Constans.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key, this.onTap, required this.textButon});
  final String? textButon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kpraimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: Center(
          child: Text(
            textButon!,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
