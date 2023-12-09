import 'package:flutter/material.dart';
import 'package:notsapp/widges/custom-app-bar.dart';
import 'package:notsapp/widges/custom-text-feild.dart';

class EditNoteviewBody extends StatelessWidget {
  const EditNoteviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 50),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16),
          CustomTextField(
            hint: 'contant',
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
