import 'package:flutter/material.dart';
import 'package:reverie/components/base_appbar.dart';
import 'package:reverie/components/bottom_menu.dart';
import 'package:reverie/screens/session.dart';

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

class SessionTypesDetailsScreen extends StatelessWidget {
  final List<SessionType> sessions;
  SessionType session;

  SessionTypesDetailsScreen({
    @required this.session,
    @required this.sessions,
  });

  @override
  Widget build(BuildContext context) {
    var _selectedSessionType;
    var session;

    return Scaffold(
        backgroundColor: Color(0xFF253334),
        appBar: BaseAppBar(),
        body: Column(children: [
          Container(
              padding: const EdgeInsets.only(left: 20, top: 35),
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
                                      child: Image.asset(session.card[1])),
                                  Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(session.card[0],
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'AlegreyaSans',
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFFFF0000))))
                                ]))),
                    //onTap: () => onTapped(session),
                  )
              ])),
          BottomMenu(),
        ]));
  }
}
