import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(children: <Widget>[
        appBackgroundScreen(),
        ListView(
          children: <Widget>[
            appLogo(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Welcome..", style: kTitleStyle),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Sign in To Continue..", style: ksubTitleGreenStyle),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter a Email Address'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: TextFormField(
                  controller: passwordcontroller,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter a Password'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/plans');
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
              ),
            ),
            Divider(),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: 60,
                    child: OutlineButton(
                      highlightedBorderColor: Color(kPrimaryColor),
                      borderSide:
                          BorderSide(width: 2, color: Color(kPrimaryColor)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Continue With",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Image.asset(
                            "/images/gmail.png",
                            height: 20,
                            width: 20,
                          ), // icon
                          // text
                        ],
                      ),
                    ))),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a Member ",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "SignUp",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Color(kgreenColor)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
