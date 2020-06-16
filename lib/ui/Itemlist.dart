
import 'package:flutter/material.dart';
import './listdetails.dart';

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("My App"),
    backgroundColor: Colors.black,
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

    body:EachList(),
    );
  }
}




class EachList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (_, int index) {
          return Card(
            child: ListTile(
              title: Text("Item $index"),
              subtitle: Text('price 500'),
              leading: Icon(Icons.account_balance,color: Colors.green,),
              onTap: (){
                Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder:(context)=>ListDetails(),
                  )
                );
              },
            ),
          );
        },
      );


  }
}


