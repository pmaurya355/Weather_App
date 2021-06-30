import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

import './home_screen.dart';

void main() {
  RenderErrorBox.backgroundColor = Colors.blueGrey;
  RenderErrorBox.textStyle = ui.TextStyle(color: Colors.transparent);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
