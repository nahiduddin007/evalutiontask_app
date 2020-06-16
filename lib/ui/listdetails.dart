import 'package:flutter/material.dart';

class ListDetails extends StatefulWidget {
  @override
  _ListDetailsState createState() => _ListDetailsState();
}

class _ListDetailsState extends State<ListDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              print("button is click");
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,

            ),
          ),
        ],
      ),
    );
  }
}
