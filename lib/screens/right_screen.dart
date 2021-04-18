import 'package:flutter/material.dart';
import 'package:flutter_hackathon_anneler_satiyor/widgets/product_card.dart';

class RightScreen extends StatefulWidget {
  @override
  _RightScreenState createState() => _RightScreenState();
}

class _RightScreenState extends State<RightScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ProductCard(
            title: "Ayakkabı",
            content: "Hiç Giyilmemiş",
            price: "1789 TL ",
            user: "Hemingway",
            url:
                "https://cdn.pixabay.com/photo/2017/09/02/13/40/bebe-2707326_1280.jpg",
          ),
          ProductCard(
            title: "Airpods",
            content: "Sıfır",
            price: "Sıfır TL",
            user: "Steve Jobs",
            url:
                "https://cdn.pixabay.com/photo/2018/01/08/02/34/technology-3068617_1280.jpg",
          ),
          ProductCard(
            title: "Ayakkabı",
            content: "1 Kere Giyildi",
            price: "500 TL",
            user: "Churchill",
            url:
                "https://cdn.pixabay.com/photo/2014/10/27/19/18/baby-shoes-505471_1280.jpg",
          ),
          ProductCard(
            title: "Bebek arabası",
            content: "3 ay kullanıldı",
            price: "1299 TL ",
            user: "Jhon Doe",
            url:
                "https://cdn.pixabay.com/photo/2014/05/04/18/05/baby-carriage-337698_1280.jpg",
          ),
          ProductCard(
            title: "Keman",
            content: "6 ay kullandım",
            price: "5000 TL",
            user: "Satıcı: Vivaldi",
            url:
                "https://cdn.pixabay.com/photo/2016/11/19/10/01/woman-1838412_1280.jpg",
          ),
        ],
      ),
    );
  }
}
