// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reverie/components/base_appbar.dart';
import 'package:reverie/components/bottom_menu.dart';
import 'package:reverie/constants.dart';

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: BaseAppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              CircleAvatar(
                radius: 90,
                foregroundImage:
                    AssetImage("assets/images/Session1/Profile_small.png"),
              ),
              const SizedBox(height: 30),
              Text(
                "Afreen Khan",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 40,
                    fontFamily: "Alegreya",
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Lucknow, India",
                style: TextStyle(
                  fontFamily: "AlegreyaSans",
                  color: kTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
