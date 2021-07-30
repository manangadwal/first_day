import 'package:first_day/app/auth/login.dart';
import 'package:first_day/app/screens/Home/homepage.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  MyRoutes.homeRoute: (context) => Homepage(),
  MyRoutes.loginRoute: (context) => LoginPage(),
};

class MyRoutes {
  static String loginRoute = "/login";
  static String homeRoute = "/home";
}
