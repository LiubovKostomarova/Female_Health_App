// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:reverie/components/base_appbar.dart';
import 'package:reverie/components/bottom_menu.dart';
import 'package:reverie/screens/session.dart';

class HomeScreenTr extends StatefulWidget {
  @override
  _HomeScreenTrState createState() => _HomeScreenTrState();
}

class _HomeScreenTrState extends State<HomeScreenTr> {
  final Color backgroundColor = const Color(0xff253334);
  final Color red = const Color(0xffFF0000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: BaseAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/backImage.png',
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 31.0,
                          left: 37.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Track',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 27,
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '[Track description]',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 31.0,
                          left: 37.0,
                        ),
                        child: SizedBox(
                          height: 39.0,
                          width: 138.0,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text(
                                  'Start',
                                  style: TextStyle(
                                    fontFamily: 'SanFrancisco',
                                    fontSize: 17.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(width: 4.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // отступ
              const SizedBox(
                height: 36.0,
              ),
              // список
              /*
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      minVerticalPadding: 10.0,
                      contentPadding: const EdgeInsets.only(
                        bottom: 0.0,
                      ),
                      leading: SizedBox(
                        height: 65.0,
                        width: 65.0,
                        child: Image.asset(
                          'assets/image$index.png',
                        ),
                      ),
                      title: Text(
                        'Session ${index + 1}',
                        style: TextStyle(
                          color: red,
                          fontFamily: 'SanFrancisco',
                          fontSize: 20.0,
                        ),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                      ),
                      trailing: SizedBox(
                        height: 50.0,
                        width: 70.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Free',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '20 Min',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              */
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      minVerticalPadding: 10.0,
                      contentPadding: const EdgeInsets.only(
                        bottom: 0.0,
                      ),
                      leading: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SessionTypesApp()),
                            );
                          },
                          child: SizedBox(
                            height: 65.0,
                            width: 65.0,
                            child: Image.asset('assets/image0.png'),
                          )),
                      title: Text(
                        'Session 1',
                        style: TextStyle(
                          color: red,
                          fontFamily: 'SanFrancisco',
                          fontSize: 20.0,
                        ),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                      ),
                      trailing: SizedBox(
                        height: 50,
                        width: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Free',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '20 Min',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      minVerticalPadding: 10.0,
                      contentPadding: const EdgeInsets.only(
                        bottom: 0.0,
                      ),
                      leading: SizedBox(
                        height: 65.0,
                        width: 65.0,
                        child: Image.asset(
                          'assets/image1.png',
                        ),
                      ),
                      title: Text(
                        'Session 2',
                        style: TextStyle(
                          color: red,
                          fontFamily: 'SanFrancisco',
                          fontSize: 20.0,
                        ),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                      ),
                      trailing: SizedBox(
                        height: 50,
                        width: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Premium',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '15 Min',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      minVerticalPadding: 10.0,
                      contentPadding: const EdgeInsets.only(
                        bottom: 0.0,
                      ),
                      leading: SizedBox(
                        height: 65.0,
                        width: 65.0,
                        child: Image.asset(
                          'assets/image2.png',
                        ),
                      ),
                      title: Text(
                        'Session 3',
                        style: TextStyle(
                          color: red,
                          fontFamily: 'SanFrancisco',
                          fontSize: 20.0,
                        ),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                      ),
                      trailing: SizedBox(
                        height: 50,
                        width: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Premium',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '39 Min',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ListTile(
                      minVerticalPadding: 10.0,
                      contentPadding: const EdgeInsets.only(
                        bottom: 0.0,
                      ),
                      leading: SizedBox(
                        height: 65.0,
                        width: 65.0,
                        child: Image.asset(
                          'assets/image3.png',
                        ),
                      ),
                      title: Text(
                        'Session 4',
                        style: TextStyle(
                          color: red,
                          fontFamily: 'SanFrancisco',
                          fontSize: 20.0,
                        ),
                      ),
                      subtitle: const Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                      ),
                      trailing: SizedBox(
                        height: 50,
                        width: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Premium',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              '50 Min',
                              style: TextStyle(
                                color: red,
                                fontFamily: 'SanFrancisco',
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
