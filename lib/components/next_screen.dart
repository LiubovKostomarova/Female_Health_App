// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:reverie/constants.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Session1/TickIcon.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 411,
                height: 130,
                alignment: Alignment.topCenter,
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topLeft,
                width: 311,
                height: 100,
                child: Text(
                  "Let's link the device",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffFF0000),
                      fontFamily: "Alegreya"),
                ),
              ),
              Container(
                  child: Container(
                      width: 311,
                      height: 430,
                      color: Color(0xffc4c4c4),
                      child: Container(
                        alignment: Alignment.center,
                        width: 311,
                        height: 78,
                        child: Text(
                            "[Here will be the instructions on how to connect the device and the qualiti of the connection monitoring]",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontFamily: "AlegreyaSans")),
                        padding: EdgeInsets.all(15),
                      ))),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Finish",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xffFF0000),
                        fontFamily: "AlegreyaSans"),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff7c9a92),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
              SizedBox(height: 30),
            ],
          ),
        ));
  }
}
