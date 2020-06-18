import 'package:flutter/material.dart';
import './ui/loginpage.dart';
import './ui/Itemlist.dart';


void main() => runApp(new MaterialApp(
  home: MyApp(),
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  Login _login;
  ListApp _listApp;
  Widget _loginscreen;
  bool _authenticate;

  _MyAppState(){
    _login = new Login(onSubmit: (){onSubmit();});
    _listApp = new ListApp();
    _loginscreen = _login;
    _authenticate = false;
  }

  void onSubmit(){
     print("Login with :" +"Username : "+_login.username+' '+"Password:"+_login.password);

     if((_login.username == 'abcd@theantopolis.com') && _login.password == '12345678') {

        _setAuthentication(true);
    }
     else{
       print("Username or password is incorrect");
     }
  }




  void _setAuthentication(bool auth){
setState(() {
  if(auth == true){
    _loginscreen = _listApp;
  }
  else{
     _loginscreen = _login;
  }

});


  }





  @override
  Widget build(BuildContext context) {
    return _loginscreen;
  }
}


