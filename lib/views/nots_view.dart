import 'package:flutter/material.dart';
import 'package:notsapp/widges/notes_view_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotsViewBody(),
    );
  }
}
