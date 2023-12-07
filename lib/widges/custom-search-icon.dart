import 'package:flutter/material.dart';

class CustomSrearchIcon extends StatelessWidget {
  const CustomSrearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.1),
      ),
      child: Center(
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
