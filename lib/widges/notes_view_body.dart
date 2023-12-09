import 'package:flutter/material.dart';
import 'package:notsapp/widges/custom-app-bar.dart';
import 'package:notsapp/widges/notes-list-view.dart';

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
          CustomAppBar(title: 'Nots', icon: Icons.search),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
