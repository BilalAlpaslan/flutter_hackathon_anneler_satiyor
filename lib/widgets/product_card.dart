import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  var title;
  var url;
  var content;
  var price;
  var user;

  ProductCard({this.title, this.url, this.price, this.user, this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, "/detail"),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(url), fit: BoxFit.cover),
                  ),
                  width: 120,
                  height: 150.0,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            color: Color(0xFFAACD6E)),
                      ),
                      Text(
                        content,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color(0XFF3C3530)),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Color(0XFF3C3530)),
                      ),
                      Text(
                        user,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Color(0XFF3C3530)),
                      ),
                    ],
                  ),
                  width: 210,
                  height: 160.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
