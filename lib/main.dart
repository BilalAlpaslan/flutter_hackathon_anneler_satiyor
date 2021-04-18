import 'package:flutter/material.dart';
import 'package:flutter_hackathon_anneler_satiyor/screens/detail_screen.dart';
import 'package:flutter_hackathon_anneler_satiyor/screens/left_screen.dart';
import 'package:flutter_hackathon_anneler_satiyor/screens/login_screen.dart';
import 'package:flutter_hackathon_anneler_satiyor/screens/navi_screen.dart';
import 'package:flutter_hackathon_anneler_satiyor/screens/right_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF16B6F),
      ),
      routes: {
        "/": (BuildContext context) => LoginScreen(),
        "/home": (BuildContext context) => Home(),
        "/detail": (BuildContext context) => DetailScreen(),
      },
      initialRoute: "/",
    );
  }
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Builder(builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0XFF3C3530),
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text("Helpify", style: TextStyle(color: Color(0XFFC5C6B6))),
          ),
          body: TabBarView(children: [
            LeftScreen(),
            NaviScreen(),
            RightScreen(),
          ]),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0XFF3C3530),
            onPressed: () {},
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        );
      }),
    );
  }
}
