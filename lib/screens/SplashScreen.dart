import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  String token="";
  @override
  void initState()  {
    super.initState();
     getToken();
  }

getToken() async{
 final SharedPreferences prefs = await SharedPreferences.getInstance();
       
         setState(() {
            token= prefs.getString('token').toString();
            
             Timer(
            Duration(seconds: 3),
            () => Navigator.pushNamed(context, '/home'),
          );
            // Timer(
            // Duration(seconds: 3),
            // () => Navigator.pushNamed(context, '/new/feeds'),
            // );
            print("thistok"+token);
                  if(token.length>1 && token!="null" ){
              Timer(
                  Duration(seconds: 3),
                  () => Navigator.pushNamed(context, '/new/feeds'),
                  );
                  }
                  else {
                    Timer(
                  Duration(seconds: 3),
                  () => Navigator.pushNamed(context, '/home'),
                );
                  }
         });
     
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Center(
          child: Image.asset('assets/images/logo.png',
              height: 150, width: 150, fit: BoxFit.contain),
        )
      ],
    ));
  }
}
