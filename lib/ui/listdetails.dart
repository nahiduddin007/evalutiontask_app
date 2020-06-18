import 'package:flutter/cupertino.dart';
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
              onPressed: () {
                print("button is click");
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdnb.artstation.com/p/assets/images/images/003/461/537/medium/anna-nguyen-film.jpg?1473930947'),
                          fit: BoxFit.fitHeight),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      )),
                  width: double.infinity,
                ),
                Positioned(
                  left: 20.0,
                  bottom: 10.0,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10.0,
                  bottom: 0,
                  child: Chip(
                    elevation: 0,
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    backgroundColor: Theme.of(context).primaryColor,
                    label: Text("Rs. 1,80,000"),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  }
}

Widget _categoryList(BuildContext context) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
              image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/250?image=9'),
                  fit: BoxFit.cover)),
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: 100,
          height: 100,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Tables")
      ],
    ),
  );
}
