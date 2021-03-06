import 'package:flutter/material.dart';
import 'package:test_1/PAGES/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/utils/routes.dart';
import 'package:test_1/widgets/themes.dart';
import 'PAGES/login_page.dart';

 void main() {
  runApp(MyApp());
}
// this is the commit of 5 tarik

class MyApp  extends StatelessWidget {
   MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var googleFonts = GoogleFonts;
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      }
    );
  }
}