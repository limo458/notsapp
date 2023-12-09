import 'package:flutter/material.dart';
import 'package:notsapp/widges/custom-search-icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 35),
        ),
        const Spacer(),
        CustomSrearchIcon(icon: icon)
      ],
    );
  }
}
