import 'package:flutter/material.dart';

void main() {
  runApp(SessionTypesApp());
}

class SessionType {
  final String title;
  final String icon;
  final String name;
  final String picture1;
  final String picture2;

  SessionType(this.title, this.icon, this.name, this.picture1, this.picture2);
}

class SessionTypesApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SessionTypesAppState();
}

class _SessionTypesAppState extends State<SessionTypesApp> {
  SessionType _selectedSessionType;

  List<SessionType> sessions = [
    SessionType(
        'Body (Session 1)',
        'assets/images/Session1/BodyIcon.png',
        'Body',
        'assets/images/Session1/RectangleBody1.png',
        'assets/images/Session1/RectangleBody2.png'),
    SessionType(
        'Psychology (Session 1)',
        'assets/images/Session1/PsychologyIcon.png',
        'Psychology',
        'assets/images/Session1/RectanglePsychology.png',
        'assets/images/Session1/RectanglePsychology2.png'),
    SessionType(
        'Partner (Session 1)',
        'assets/images/Session1/PartnerIcon.png',
        'Partner',
        'assets/images/Session1/RectanglePartner1.png',
        'assets/images/Session1/RectanglePartner2.png'),
    SessionType(
        'Practice with device (Session 1)',
        'assets/images/Session1/TickIcon.png',
        'Practice with device',
        'assets/images/Session1/RectanglePractice.png',
        'assets/images/Session1/RectanglePractice2.png'),
    SessionType(
        'Diary (Session 1)',
        'assets/images/Session1/DiaryIcon1.png',
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
              padding: const EdgeInsets.all(5),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Session 1',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Alegreya',
                          color: Colors.red)))),
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
                                fit: BoxFit.contain)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(session.icon),
                              Text(session.name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Alegreya',
                                      color: Colors.red))
                            ])),
                    onTap: () => onTapped(session),
                  )
              ])),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFF253334),
            elevation: 0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/Session1/HomeIcon.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/Session1/ChatIcon.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/Session1/ConnectionIcon.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/images/Session1/Profile_small.png')),
                  label: ''),
            ],
          )
        ]));
  }
}

class SessionTypesDetailsScreen extends StatelessWidget {
  //final List<SessionType> sessions;
  final SessionType session;

  SessionTypesDetailsScreen({
    @required this.session,
  });

  @override
  Widget build(BuildContext context) {
    var _selectedSessionType;

    return Scaffold(
        backgroundColor: Color(0xFF253334),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Image.asset('assets/images/Session1/ConnectionIcon.png'),
          title:
              Container(child: Image.asset('assets/images/Session1/Logo.png')),
          centerTitle: true,
          actions: <Widget>[
            InkWell(
                onTap: () {
                  print("It's your profile");
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                        'assets/images/Session1/Profile_small.png')))
          ],
        ),
        body: Column(children: [
          Container(
              padding: const EdgeInsets.fromLTRB(20, 35, 0, 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(session.title,
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Alegreya',
                          color: Colors.red)))),
          Expanded(
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: <Widget>[
                if (session != null) ...[
                  Container(
                      height: 115,
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: ExactAssetImage(
                                  'assets/images/Session1/RectangleBody1.png'),
                              fit: BoxFit.contain)),
                      child: ListTile(
                        title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                  'assets/images/Session1/BodyIcon.png'),
                              Text(session.name,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Alegreya',
                                      color: Colors.red))
                            ]),
                      ))
                ]
              ]))
          /*Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (session != null) ...[
              Text(session.name, style: const TextStyle(color: Colors.red)),
              Image.asset(session.picture1),
            ],
          ],
        ),
      ),*/
        ]));
  }
}


/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/