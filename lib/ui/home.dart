import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      padding: EdgeInsets.all(50.0),
      child: Center(
          child: SingleChildScrollView(
            child: Column(
        children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Text("Margherita",
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
            ),
            PizzaImageWidget(),
            OrderButton(),
        ],
      ),
          )),
    );
  }
}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.jpg');
    Image image = Image(image: pizzaAsset, width: 400.0, height: 400.0);
    return Container(
      child: image,
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order Pizza"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext con) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for ordering!!"),
    );
    showDialog(context: con, builder: (BuildContext context) => alert);
  }
}
