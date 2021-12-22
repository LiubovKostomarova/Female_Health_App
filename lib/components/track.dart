import 'package:flutter/material.dart';

class HomeScreenTr extends StatefulWidget {
  const HomeScreenTr({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenTr> {
  final Color backgroundColor = const Color(0xff253334);
  final Color red = const Color(0xffFF0000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              // отступ
              const SizedBox(
                height: 36.0,
              ),
              // хэдер
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: SizedBox(
                      height: 20.0,
                      width: 20.0,
                      child: Image.asset(
                        'assets/leadingButton.png',
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 48.0,
                    width: 44.0,
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  ),
                  GestureDetector(
                    child: SizedBox(
                      height: 35.0,
                      width: 35.0,
                      child: Image.asset(
                        'assets/avatar.png',
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              // отступ
              const SizedBox(
                height: 36.0,
              ),
              // картинка
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
                      leading: SizedBox(
                        height: 65.0,
                        width: 65.0,
                        child: Image.asset(
                          'assets/image0.png',
                        ),
                      ),
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
    );
  }
}