import 'package:flutter/material.dart';

enum AgeList { first, second, third, forth }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  AgeList _age = AgeList.first;
  bool _agreement = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Back.png"),
                      fit: BoxFit.cover)),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 411,
                      height: 100,
                      alignment: Alignment.topCenter,
                      child: Image(
                        image: AssetImage("assets/images/Logo.png"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      width: 311,
                      height: 78,
                      child: Text(
                        "Let's make it personal",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xffFF0000),
                            fontFamily: "Alegreya"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 311,
                      height: 78,
                      child: Text(
                        "Answer several questions that will help with right track and results monitoring",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.grey,
                            fontFamily: "AlegreyaSans"),
                      ),
                    ),
                    SizedBox(height: 50),
                    Expanded(
                      child: Container(
                          child: Container(
                        width: 311,
                        height: 206,
                        color: Color(0xffc4c4c4),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment(-0.7, 0),
                                child: Text(
                                  "Your age:",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontFamily: "AlegreyaSans"),
                                )),
                            SizedBox(height: 20),
                            RadioListTile(
                              title: const Text('18-22',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontFamily: "AlegreyaSans")),
                              value: AgeList.first,
                              groupValue: _age,
                              onChanged: (AgeList? value) {
                                setState(() {
                                  _age = value!;
                                });
                              },
                            ),
                            RadioListTile(
                              title: const Text('22-26',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontFamily: "AlegreyaSans")),
                              value: AgeList.second,
                              groupValue: _age,
                              onChanged: (AgeList? value) {
                                setState(() {
                                  _age = value!;
                                });
                              },
                            ),
                            RadioListTile(
                              title: const Text('27-31',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontFamily: "AlegreyaSans")),
                              value: AgeList.third,
                              groupValue: _age,
                              onChanged: (AgeList? value) {
                                setState(() {
                                  _age = value!;
                                });
                              },
                            ),
                            RadioListTile(
                              title: const Text('31-35',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontFamily: "AlegreyaSans")),
                              value: AgeList.forth,
                              groupValue: _age,
                              onChanged: (AgeList? value) {
                                setState(() {
                                  _age = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      )),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      child: Text(
                        "Finish",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xffFF0000),
                            fontFamily: "AlegreyaSans"),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff7c9a92),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 90),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return NextScreen();
                          }),
                        );
                      },
                    ),
                    SizedBox(height: 30),
                  ]))),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Back.png"), fit: BoxFit.cover)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 411,
            height: 130,
            alignment: Alignment.topCenter,
            child: Image(
              image: AssetImage("assets/images/Logo.png"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.topLeft,
            width: 311,
            height: 100,
            child: Text(
              "Let's link the device",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xffFF0000),
                  fontFamily: "Alegreya"),
            ),
          ),
          Container(
              child: Container(
                  width: 311,
                  height: 430,
                  color: Color(0xffc4c4c4),
                  child: Container(
                    alignment: Alignment.center,
                    width: 311,
                    height: 78,
                    child: Text(
                        "[Here will be the instructions on how to connect the device and the qualiti of the connection monitoring]",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontFamily: "AlegreyaSans")),
                    padding: EdgeInsets.all(15),
                  ))),
          SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Finish",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xffFF0000),
                    fontFamily: "AlegreyaSans"),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff7c9a92),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 90),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)))),
          SizedBox(height: 30),
        ],
      ),
    ));
  }
}
