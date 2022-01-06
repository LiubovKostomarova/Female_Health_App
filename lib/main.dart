// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:reverie/screens/home_screen.dart';
// import 'package:reverie/components/track.dart';
import 'package:reverie/components/onboarding.dart';
// import 'package:reverie/components/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
