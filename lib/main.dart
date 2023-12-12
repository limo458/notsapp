import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notsapp/views/notes_view.dart';
import 'package:notsapp/widges/Constans.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(boxtName);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const NotesView());
  }
}
