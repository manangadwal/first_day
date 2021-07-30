import 'package:first_day/pages/homepage.dart';
import 'package:first_day/pages/login.dart';
import 'package:first_day/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Color(9),
        primarySwatch: Colors.purple,
        fontFamily: GoogleFonts.varela().fontFamily,
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),

      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
