import 'package:flutter/material.dart';
import 'package:notsapp/widges/edit-not-view-body.dart';

class EditnoteView extends StatelessWidget {
  const EditnoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteviewBody(),
    );
  }
}
