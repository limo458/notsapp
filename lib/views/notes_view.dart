import 'package:flutter/material.dart';
import 'package:notsapp/widges/add-note-button-sheet.dart';
import 'package:notsapp/widges/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16, right: 8),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                context: context,
                builder: (context) {
                  return const AddnNoteButtonSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: const NotsViewBody(),
    );
  }
}
