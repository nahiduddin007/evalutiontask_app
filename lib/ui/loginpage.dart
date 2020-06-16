import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 280.0,
                  color: Colors.grey.withOpacity(0.1),
                  child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: '  Username',
                        fillColor: Colors.grey.withOpacity(0.5),
                      ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                  height: 10.0,

                ),
                Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: 280.0,
                  color: Colors.grey.withOpacity(0.1),
                  child: TextField(

                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: '  Password',
                      hintStyle: TextStyle(

                      ),
                    ),
                    autofocus: false,
                    obscureText: true,
                  ),
                ),



                SizedBox(
                  width: 40.0,
                  height: 40.0,

                ),

                Container(
                  height: 50,
                  width: 280,
                  child: RaisedButton(
                      child: Text("Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),),
                      color: Colors.black,
                      onPressed:(){} ),
                ),


              ],


            ),
          ),
        ),
      );

  }
}
