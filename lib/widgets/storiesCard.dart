import 'package:flutter/material.dart';

Widget storiesCard(title, description) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          trailing: Wrap(
            spacing: 15, // space between two icons
            children: <Widget>[
              Image.asset(
                'assets/images/stroires.png',
                width: 60,
                height: 60,
              ),
            ],
          ),
          title: Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
          ),
          subtitle: Text(
            description,
            style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.normal),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(width: 8),
          ],
        ),
      ],
    ),
  );
}