import 'package:flutter/material.dart';
import 'package:test_1/PAGES/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'PAGES/login_page.dart';

 void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
   MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var googleFonts = GoogleFonts;
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      // primaryTextTheme: googleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/home":(context) => HomePage(),
        "/login":(context) => LoginPage(),
      }
    );
  }
}