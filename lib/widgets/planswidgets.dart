import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/constants.dart';

Widget freeMemberTile(context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      decoration: BoxDecoration(
          color: Color(kPrimaryColor),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ExpansionTile(
        title: Text(
          "Free Membership",
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                )),
            child: ListTile(
              title: Column(
                children: [
                  Text(
                    "Free Membership Plan Description",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Divider(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(kPrimaryColor), // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/free/member');
                    },
                    child: Text('View All'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget customizePlaneTile(context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      decoration: BoxDecoration(
          color: Color(0xff5A945E),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ExpansionTile(
        title: Text(
          "Customize plan",
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                )),
            child: ListTile(
              title: Column(
                children: [
                  Text(
                    "Customize Plan Description",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Divider(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(kgreenColor), // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/customize/plan');
                    },
                    child: Text('View All'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget premiumPlanTile(context) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      decoration: BoxDecoration(
          color: Color(0xff03232DC),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ExpansionTile(
        title: Text(
          "Premium Plan",
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                )),
            child: ListTile(
              title: Column(
                children: [
                  Text(
                    "Premium Plan Description",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Divider(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(kblueColor), // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/premium/plan');
                    },
                    child: Text('View All'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
