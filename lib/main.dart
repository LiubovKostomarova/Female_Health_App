import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SessionTypesApp());
}

class SessionType {
  final List card;
  final String title;
  final String icon;
  final String icon2;
  final String name;
  final String picture1;
  final String picture2;

  SessionType(this.card, this.title, this.icon, this.icon2, this.name,
      this.picture1, this.picture2);
}

class SessionTypesApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SessionTypesAppState();
}

class _SessionTypesAppState extends State<SessionTypesApp> {
  SessionType _selectedSessionType;

  List<SessionType> sessions = [
    SessionType([
      'Body (Session 1)',
      'assets/images/Session1/BodyIcon.png',
      '',
      'Body',
      'assets/images/Session1/RectangleBody1.png',
      'assets/images/Session1/RectangleBody2.png'
    ],
        'Body (Session 1)',
        'assets/images/Session1/BodyIcon.png',
        '',
        'Body',
        'assets/images/Session1/RectangleBody1.png',
        'assets/images/Session1/RectangleBody2.png'),
    SessionType([
      'Psychology (Session 1)',
      'assets/images/Session1/PsychologyIcon.png',
      '',
      'Psychology',
      'assets/images/Session1/RectanglePsychology.png',
      'assets/images/Session1/RectanglePsychology2.png'
    ],
        'Psychology (Session 1)',
        'assets/images/Session1/PsychologyIcon.png',
        '',
        'Psychology',
        'assets/images/Session1/RectanglePsychology.png',
        'assets/images/Session1/RectanglePsychology2.png'),
    SessionType([
      'Partner (Session 1)',
      'assets/images/Session1/PartnerIcon.png',
      '',
      'Partner',
      'assets/images/Session1/RectanglePartner1.png',
      'assets/images/Session1/RectanglePartner2.png'
    ],
        'Partner (Session 1)',
        'assets/images/Session1/PartnerIcon.png',
        '',
        'Partner',
        'assets/images/Session1/RectanglePartner1.png',
        'assets/images/Session1/RectanglePartner2.png'),
    SessionType([
      'Practice with device (Session 1)',
      'assets/images/Session1/TickIcon.png',
      '',
      'Practice with device',
      'assets/images/Session1/RectanglePractice.png',
      'assets/images/Session1/RectanglePractice2.png'
    ],
        'Practice with device (Session 1)',
        'assets/images/Session1/TickIcon.png',
        '',
        'Practice with device',
        'assets/images/Session1/RectanglePractice.png',
        'assets/images/Session1/RectanglePractice2.png'),
    SessionType([
      'Diary (Session 1)',
      'assets/images/Session1/DiaryIcon1.png',
      'assets/images/Session1/DiaryIcon2.png',
      'Diary',
      'assets/images/Session1/RectangleDiary.png',
      'assets/images/Session1/RectangleDiary2.png'
    ],
        'Diary (Session 1)',
        'assets/images/Session1/DiaryIcon1.png',
        'assets/images/Session1/DiaryIcon2.png',
        'Diary',
        'assets/images/Session1/RectangleDiary.png',
        'assets/images/Session1/RectangleDiary2.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Session Types',
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey('SessionTypesListPage'),
            child: SessionTypesListScreen(
              sessions: sessions,
              onTapped: _handleSessionTypeTapped,
            ),
          ),
          if (_selectedSessionType != null)
            SessionTypesDetailsPage(session: _selectedSessionType)
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }

          setState(() {
            _selectedSessionType = null;
          });

          return true;
        },
      ),
    );
  }

  void _handleSessionTypeTapped(SessionType session) {
    setState(() {
      _selectedSessionType = session;
    });
  }
}

class SessionTypesDetailsPage extends Page {
  final SessionType session;

  SessionTypesDetailsPage({
    this.session,
  }) : super(key: ValueKey(session));

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return SessionTypesDetailsScreen(session: session);
      },
    );
  }
}

class SessionTypesListScreen extends StatelessWidget {
  final List<SessionType> sessions;
  final ValueChanged<SessionType> onTapped;

  SessionTypesListScreen({
    @required this.sessions,
    @required this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF253334),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 88,
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
                    child: Image.asset(
                        'assets/images/Session1/Profile_small.png')))
          ],
        ),
        body: Column(children: [
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Session 1',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Alegreya',
                          color: Color(0xFFFF0000))))),
          Expanded(
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(5),
                  //crossAxisSpacing: 20,
                  //mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  //childAspectRatio: (1 / 1),
                  children: <Widget>[
                for (var session in sessions)
                  ListTile(
                    title: Container(
                        height: 115,
                        width: 153,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: ExactAssetImage(session.picture1),
                                fit: BoxFit.cover)),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: ExactAssetImage(session.picture2),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /*Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Image.asset(session.icon2)),*/
                                  Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Image.asset(session.icon)),
                                  Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(session.name,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Alegreya',
                                              color: Color(0xFFFF0000))))
                                ]))),
                    onTap: () => onTapped(session),
                  )
              ])),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF253334),
            elevation: 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/Session1/HomeIcon.png'),
                      color: Color(0xFFFF0000)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/Session1/ChatIcon.png'),
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
          )
        ]));
  }
}

class SessionTypesDetailsScreen extends StatelessWidget {
  final List<SessionType> sessions;
  final SessionType session;

  SessionTypesDetailsScreen({
    @required this.session,
    @required this.sessions,
  });

  @override
  Widget build(BuildContext context) {
    var _selectedSessionType;

    return Scaffold(
        backgroundColor: Color(0xFF253334),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 88,
          leading: Image.asset('assets/images/Session1/ConnectionIcon.png'),
          title: IconButton(
              icon: Image.asset('assets/images/Session1/Logo.svg', width: 30),
              onPressed: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
          actions: <Widget>[
            InkWell(
                onTap: () {},
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                        'assets/images/Session1/Profile_small.png')))
          ],
        ),
        body: Column(children: [
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(session.card[0],
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Alegreya',
                          color: Color(0xFFFF0000))))),
          Expanded(
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(5),
                  crossAxisCount: 2,
                  //crossAxisSpacing: 20,
                  //mainAxisSpacing: 20,
                  //childAspectRatio: (1 / 1),
                  children: <Widget>[
                for (var session; sessions.length < 1; session++)
                  //for (var session in sessions)
                  ListTile(
                    title: Container(
                        height: 115,
                        width: 153,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: ExactAssetImage(session.card[4]),
                                fit: BoxFit.cover)),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: ExactAssetImage(session.card[5]),
                                    fit: BoxFit.cover)),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  /*Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Image.asset(session.icon2)),*/
                                  Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Image.asset(session.icon)),
                                  Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(session.name,
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Alegreya',
                                              color: Color(0xFFFF0000))))
                                ]))),
                    //onTap: () => onTapped(session),
                  )
              ])),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xFF253334),
            elevation: 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/Session1/HomeIcon.png'),
                      color: Color(0xFFFF0000)),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/Session1/ChatIcon.png'),
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
          )
        ]));
  }
}


/*Column(children: [
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(session.title,
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Alegreya',
                          color: Color(0xFFFF0000))))),
          Expanded(
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(5),
                  //crossAxisSpacing: 20,
                  //mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  //childAspectRatio: (1 / 1),

                  children: <Widget>[
                if (session != null) ...[
                  Column(children: [
                    Container(
                        height: 115,
                        width: 153,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: ExactAssetImage(
                                    'assets/images/Session1/RectangleBody1.png'),
                                fit: BoxFit.contain))),
                    ListTile(
                      title: Container(
                          height: 115,
                          width: 153,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/Session1/BodyIcon.png'),
                                  fit: BoxFit.cover)),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'assets/images/Session1/BodyIcon2.png'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset(session.icon)),
                                    Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Text('Theory',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Alegreya',
                                                color: Color(0xFFFF0000))))
                                  ]))),
                      onTap: () {},
                    ),
                    Container(
                        height: 115,
                        width: 153,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: ExactAssetImage(
                                    'assets/images/Session1/RectangleBody1.png'),
                                fit: BoxFit.contain))),
                    ListTile(
                      title: Container(
                          height: 115,
                          width: 153,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/Session1/RectanglePsychology.png'),
                                  fit: BoxFit.cover)),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'assets/images/Session1/RectanglePsychology2.png'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset(session.icon)),
                                    Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Text('Exercise',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Alegreya',
                                                color: Color(0xFFFF0000))))
                                  ]))),
                      onTap: () {},
                    )
                  ])
                ]
              ])),*/