import 'dart:ui';
import 'package:first_day/core/routes.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import 'Components/MyDrawer.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        // title: Text("Samsta Happen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Day"),
            Container(
              height :100,
              width:100,
              child:
            Image.network(
    'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')),
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
