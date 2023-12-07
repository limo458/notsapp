import 'package:flutter/material.dart';
import 'package:notsapp/widges/costum-note%20-item.dart';
import 'package:notsapp/widges/custm-app-bar.dart';

class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          NotsItem()
        ],
      ),
    );
  }
}
