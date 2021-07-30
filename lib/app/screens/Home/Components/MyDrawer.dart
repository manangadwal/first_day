import 'package:first_day/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  final String url = "https://youtu.be/dQw4w9WgXcQ";

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      onPressed: () async {
                        await launch(url);
                      },
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
    );
  }
}
