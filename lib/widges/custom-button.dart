import 'package:flutter/material.dart';
import 'package:notsapp/widges/AConstans.dart';

class customButton extends StatelessWidget {
  const customButton(
      {super.key, this.onTap, required this.textButon, this.isloding = false});
  final bool isloding;
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
          child: isloding
              ? const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  textButon!,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
        ),
      ),
    );
  }
}
