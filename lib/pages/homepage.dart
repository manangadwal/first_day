import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:first_day/pages/routes.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  _launchURL() async {
    const url = "https://youtu.be/dQw4w9WgXcQ";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Material(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.loginRoute);
                        },
                        icon: Icon(Icons.admin_panel_settings),
                        iconSize: 60,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Admin Panel",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Column(
                    children: [
                      // Text("UNIQUE SECURITY CODE"),s
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Image.asset("images/8.png"),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        "002 345 879",
                        style: TextStyle(color: Colors.green),
                      ),
                      MaterialButton(
                        onPressed: () => _launchURL(),
                        child: Text(
                          "VIEW SECURITY CERTIFICATE",
                          style: TextStyle(color: Colors.green, fontSize: 10),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        // title: Text("Samsta Happen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("Fuck you"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
