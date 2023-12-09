import 'package:flutter/material.dart';

class CustomSrearchIcon extends StatelessWidget {
  const CustomSrearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(.1),
      ),
      child: Center(child: IconButton(onPressed: () {}, icon: Icon(icon))),
    );
  }
}
