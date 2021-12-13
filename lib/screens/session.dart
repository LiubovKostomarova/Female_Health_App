import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reverie/components/base_appbar.dart';
import 'package:reverie/components/bottom_menu.dart';
import 'package:reverie/screens/details_page.dart';

/*void main() {
  runApp(SessionTypesApp());
}*/

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
      debugShowCheckedModeBanner: false,
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
        appBar: BaseAppBar(),
        body: Column(children: [
          Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
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
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
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
                                  Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Image.asset(session.icon2)),
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
          BottomMenu()
        ]));
  }
}
