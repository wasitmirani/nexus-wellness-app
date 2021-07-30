import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: new Stack(
          children: <Widget>[
            appBackgroundScreen(),
            SizedBox(
              height: 50,
            ),
         
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                   appLogo(),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          height: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              )),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                child: Padding(
                                  padding: EdgeInsets.all(30),
                                  child: Column(children: <Widget>[
                                    Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,"),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width / 1.1,
                          height: 60,
                          child: FlatButton(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/login');
                            },
                            color: Color(kPrimaryColor),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text("OR"),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                            color: Colors.transparent,
                            width: MediaQuery.of(context).size.width / 1.1,
                            height: 60,
                            child: OutlineButton(
                              highlightedBorderColor: Color(kPrimaryColor),
                              borderSide: BorderSide(
                                  width: 2, color: Color(kPrimaryColor)),
                              onPressed: () {},
                              child: Text(
                                'Sign Up',
                                style: TextStyle(color: Color(kPrimaryColor)),
                              ),
                            ))),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
