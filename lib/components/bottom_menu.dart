import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF253334),
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Session1/HomeIcon.png'),
                color: Color(0xFFFF0000)),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/Session1/ChatIcon.png'),
                color: Color(0xFFC4C4C4)),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/images/Session1/DisplaysIcon.png'),
                color: Color(0xFFC4C4C4)),
            label: ''),
        BottomNavigationBarItem(
            icon: ImageIcon(
                AssetImage('assets/images/Session1/Profile_small.png'),
                color: Color(0xFFC4C4C4)),
            label: ''),
      ],
    );
  }
}
