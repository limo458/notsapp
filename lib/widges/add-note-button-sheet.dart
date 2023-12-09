import 'package:flutter/material.dart';
import 'package:notsapp/widges/Add-button.dart';
import 'package:notsapp/widges/custom-text-feild.dart';

class AddnNoteButtonSheet extends StatelessWidget {
  const AddnNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'contant',
            maxline: 5,
          ),
          SizedBox(height: 150),
          AddButton(textButon: 'Add'),
        ],
      ),
    );
  }
}
