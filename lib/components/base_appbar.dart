import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        leading: Image.asset('assets/images/Session1/ConnectionIcon.png'),
        title: IconButton(
            icon: Image.asset('assets/images/Session1/HomePageLogo.png'),
            onPressed: () {}),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
              onTap: () {},
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
