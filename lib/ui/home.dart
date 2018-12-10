import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepOrangeAccent,
      padding: EdgeInsets.only(top:25.0,bottom: 16.0,left: 16.0, right: 16.0),
      child: Center(
          child: SingleChildScrollView(
            child: Column(
        children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Margherita",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              decoration: TextDecoration.none,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400)),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Tomato, Mozarella cheese, Basil",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400)),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Marinara",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              decoration: TextDecoration.none,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400)),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Tomato, Garlic",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400)),
                  ),
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

// Custom Widget to display Image
class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza1.jpg');
    Image image = Image(image: pizzaAsset,height: 300.0,width: 350.0);
    return Container(
      child: image
    );
  }
}

//Custom Widget for a Raised button
class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 16.0),
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

  //function to display an alert dialog
  void order(BuildContext con) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for ordering!!"),
    );
    showDialog(context: con, builder: (BuildContext context) => alert);
  }
}
