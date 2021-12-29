import 'package:flutter/material.dart';

import 'package:reverie/screens/session.dart';
=======

import 'package:reverie/components/profile.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  const BaseAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        leading: Image.asset('assets/images/Session1/ConnectionIcon.png'),
        title: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SessionTypesApp()),
              );
            },
            child: SizedBox(
              child: Image.asset('assets/images/Session1/HomePageLogo.png'),
            )),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfileScreen()),
                );
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child:
                      Image.asset('assets/images/Session1/Profile_small.png')))
        ]);
  }

  @override
  Size get preferredSize => Size(100, 100);
  //Size.fromHeight(kToolbarHeight);
}
