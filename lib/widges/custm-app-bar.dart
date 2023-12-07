import 'package:flutter/material.dart';
import 'package:notsapp/widges/custom-search-icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 35),
        ),
        Spacer(),
        CustomSrearchIcon()
      ],
    );
  }
}
