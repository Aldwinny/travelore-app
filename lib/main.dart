import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelore/screens/wrapper.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
      darkTheme: ThemeData(
          primaryColor: Colors.blue,
          highlightColor: Colors.blue,
          textTheme: TextTheme(
            headline1: GoogleFonts.yantramanav(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
            headline2: GoogleFonts.roboto(color: Colors.white),
          )),
      theme: ThemeData(
        primaryColor: Colors.pink,
        highlightColor: Colors.pink,
        textTheme: TextTheme(
          headline1: GoogleFonts.yantramanav(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline2: GoogleFonts.roboto(),
        ),
      ),
    );
  }
}
