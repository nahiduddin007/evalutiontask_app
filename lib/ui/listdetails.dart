import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';










class ListDetails extends StatelessWidget {

  Container MyImage(String imageVal,String heading,){
    return Container(
      width: 160,
      child: Card(
        child: Wrap(
          children: <Widget>[
           Image.network(imageVal),
            ListTile(
              title: Text(heading),
            ),
          ],
        ),
      ),
    );
  }

  final String image = "image/pool.jpg";
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
        children: <Widget>[
          Container(
              foregroundDecoration: BoxDecoration(color: Colors.black26),
              height: 400,
              child: Image.asset(image, fit: BoxFit.cover)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Item: ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
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
                                      Icons.star_border,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                "\$ 200",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      const SizedBox(height: 30.0),
                      Text(
                        "Description".toUpperCase(),
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 14.0),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        "Family rooms are the largest rooms in our hotel and can accommodate up to 5 guests. Split into two sections, you’ll find a queen bed in one and either a single bed or two twin beds in the other. Depending on the configuration, these rooms are either 35 or 40 sq m. Amenities include",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14.0),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        "Hotel operations vary in size, function, complexity, and cost. Most hotels and major hospitality companies have set industry standards to classify hotel types. An upscale full-service hotel facility offers luxury amenities, full service accommodations, an on-site restaurant, and the highest level of personalized service, such as a concierge, room service, and clothes pressing staff. Full service hotels often contain upscale full-service facilities with many full-service",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14.0),
                      ),
                      const SizedBox(height: 30.0),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item1"),
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item2"),
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item3"),
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item4"),
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item5"),
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item6"),
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item7"),
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item8"),
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item9"),
                                MyImage("https://img.freepik.com/free-photo/sunset-pool_1203-3192.jpg?size=626&ext=jpg","Item10"),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




