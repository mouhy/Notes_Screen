import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_app/Creat.dart';
import 'package:flutter_app/Notescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NoteScreen(),
routes: {
    "addnotes":(context)=>AddNotes()
    },
    );
  }
}
