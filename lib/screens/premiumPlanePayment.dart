import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';

class PremiumPlanPayment extends StatefulWidget {
  const PremiumPlanPayment({Key? key}) : super(key: key);

  @override
  _PremiumPlanPaymentState createState() => _PremiumPlanPaymentState();
}

class _PremiumPlanPaymentState extends State<PremiumPlanPayment> {
  String price = "200.00";
  String currency = "USD";
  TextEditingController cardTextController = new TextEditingController();
  TextEditingController dateTextController = new TextEditingController();
  TextEditingController cvvTextController = new TextEditingController();
  TextEditingController cardHolderTextController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kblueColor),
        title: Center(
            child: Text(" Premium Membership",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800))),
        elevation: 0,
      ),
      body: new Stack(children: <Widget>[
        planBgScreen("premiumplanbg.png"),
        Column(
          children: [
            SizedBox(height: 20),
            Text("Total Price",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w500)),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("\$" + price.toString(),
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.w800)),
            ),
            SizedBox(height: 10),
            Text("Payment Method",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: 100,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Credit", style: TextStyle(fontSize: 14)),
                      ),
                      Icon(Icons.check_circle)
                    ],
                  ),
                ),
                style: ButtonStyle(
            
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                            side: BorderSide(color: Color(kblueColor))))))
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.5),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
            child: ListView(
              children: [
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: Text("Card  Number", style: ksubTitleBlackStyle),
                ),
                TextField(
                  controller: cardTextController,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Color(0xFFECECEC),
                        child: IconButton(
                          color: Colors.white,
                          iconSize: 60,
                          icon: Image.asset('assets/images/icons/article.png'),
                          tooltip: 'article',
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        color: Color(0xFFECECEC),
                        child: IconButton(
                          color: Colors.white,
                          iconSize: 60,
                          icon: Image.asset('assets/images/icons/covid.png'),
                          tooltip: 'covid',
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        color: Color(0xFFECECEC),
                        child: IconButton(
                          color: Colors.white,
                          iconSize: 60,
                          icon: Image.asset('assets/images/icons/path.png'),
                          tooltip: 'path',
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(kPrimaryColor), // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () async {
                          print("hello");
                          // updateUserPlane('1');
                        },
                        child: Text('Claim Free Plan'),
                      ),
                    ),
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
