import 'package:flutter/material.dart';
import 'package:reverie/screens/session.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF253334),
      elevation: 0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Image.asset('assets/images/Session1/HomeIcon.png'),
              //iconSize: 200,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SessionTypesApp()),
                );
              },
            ),
            backgroundColor: Color(0xFFC4C4C4),
            label: ''),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Image.asset('assets/images/Session1/ChatIcon.png'),
              color: Color(0xFFC4C4C4),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Image.asset('assets/images/Session1/DisplaysIcon.png'),
              color: Color(0xFFC4C4C4),
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: Image.asset('assets/images/Session1/ProfileIcon.png'),
              //color: Color(0xFFC4C4C4),
            ),
            label: ''),
      ],
    );
  }
}
