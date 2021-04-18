import 'dart:ui';

import 'package:flutter/material.dart';

class NaviScreen extends StatefulWidget {
  @override
  _NaviScreenState createState() => _NaviScreenState();
}

class _NaviScreenState extends State<NaviScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "İhtiyacı",
                style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFAACD6E)),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                " Olana ",
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFAACD6E)),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                " Al",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFAACD6E)),
              ),
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.arrow_back,
                size: 50,
              )
            ]),
          ),
          Container(
            child: Column(children: [
              SizedBox(
                height: 150,
              ),
              Text(
                "İhtiyacın",
                style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF16B6F)),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                " Olanı ",
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF16B6F)),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                " Paylaş",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF16B6F)),
              ),
              SizedBox(
                height: 50,
              ),
              Icon(
                Icons.arrow_forward,
                size: 50,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
