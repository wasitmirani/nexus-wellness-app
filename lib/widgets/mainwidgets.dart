import 'package:flutter/material.dart';

Widget appBackgroundScreen() {
  return Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage("images/background.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget appLogo() {
  return Container(
    alignment: Alignment.center,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset('/images/logo.png',
          height: 150, width: 150, fit: BoxFit.contain),
    ),
  );
}

Widget planBgScreen(path) {
  return Container(
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new AssetImage("images/" + path),
        fit: BoxFit.cover,
      ),
    ),
  );
}
