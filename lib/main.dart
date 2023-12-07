import 'package:flutter/material.dart';
import 'package:notsapp/views/nots_view.dart';

void main() {
  runApp(const NotsApp());
}

class NotsApp extends StatelessWidget {
  const NotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark), home: const NotsView());
  }
}
