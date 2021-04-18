import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
              ),
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/09/02/13/40/bebe-2707326_1280.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  }),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              "Bebek Ayakkabısı",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 30.0,
              height: 200.0,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ], borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Text(
                      " Hiç Giyilmemiş",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " 17 Numara",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Satıcı: Ernest Hemingway",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "1789 TL",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 54.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 45.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xFFF16B6F),
                  border: Border.all(width: 2.0, color: Colors.white)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.card_giftcard,
                    size: 18.0,
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Text("Hediye Et",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
