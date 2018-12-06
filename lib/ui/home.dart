import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      padding: EdgeInsets.all(50.0),
      child: Center(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                      "Margherita",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400))),
              Expanded(
                child: Text("Tomato, Mozarella cheese, Basil",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        decoration: TextDecoration.none,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400)),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Text("Marinara",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400))),
              Expanded(
                child: Text("Tomato, Garlic",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        decoration: TextDecoration.none,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400)),
              )
            ],
          )
        ],
      )),
    );
  }
}
