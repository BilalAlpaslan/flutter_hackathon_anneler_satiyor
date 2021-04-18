import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAACD6E),
      appBar: AppBar(
        backgroundColor: Color(0xFFAACD6E),
        title: Text(
          'Helpify',
        ),
      ),
      body: Container(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: Container(
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xFFAACD6E),
                          height: MediaQuery.of(context).size.height * 0.30,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Color(0xFFAACD6E),
                                  radius: 40,
                                  child: Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Color(0XFF3C3530),
                                  ),
                                ),
                                Text(
                                  'Giriş',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Color(0XFF3C3530),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  keyboardType: TextInputType.number,
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                    hintText: 'Telefon Numarası Girin',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 3,
                                      ),
                                    ),
                                    prefixIcon: IconTheme(
                                      data: IconThemeData(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Icon(Icons.phone),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  autocorrect: true,
                                  decoration: InputDecoration(
                                    hintText: 'Adres Girin',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 3,
                                      ),
                                    ),
                                    prefixIcon: IconTheme(
                                      data: IconThemeData(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Icon(Icons.map),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                TextField(
                                  autocorrect: true,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: 'Şifreyi Girin',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 3,
                                      ),
                                    ),
                                    prefixIcon: IconTheme(
                                      data: IconThemeData(
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      child: Icon(Icons.lock),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Center(
                                    // ignore: deprecated_member_use
                                    child: FlatButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, "/home");
                                      },
                                      padding: EdgeInsets.all(16),
                                      color: Theme.of(context).primaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'Kayıt Ol!',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
