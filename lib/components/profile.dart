import 'package:flutter/material.dart';
import 'package:reverie/constants.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 90,
                foregroundImage: AssetImage("assets/images/Profile_Pic.png"),
              ),
              Text(
                "Afreen Khan",
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: "Alegreya",
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Lucknow, India",
                style: TextStyle(fontFamily: "AlegreyaSans"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
