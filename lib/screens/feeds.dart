import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/widgets/mainDrawer.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';
import 'package:nexuswellness/widgets/postCard.dart';
import 'package:nexuswellness/widgets/storiesCard.dart';

class Feeds extends StatefulWidget {
  Feeds({Key? key}) : super(key: key);

  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("feeds"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.message_outlined),
        backgroundColor: Colors.green,
      ),
      drawer: mainDrawer(),
      body: new Stack(children: <Widget>[
        appBackgroundScreen(),
        ListView(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("What You Really Need", style: kTitleStyle),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Text(
                "here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,",
                style: ksubTitleBlackStyle),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: postCard("Lorem Ipsum",
                "here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: postCard("Lorem Ipsum",
                "here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: postCard("Lorem Ipsum",
                "here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Read Stories..", style: kTitleStyle),
          ),
          SizedBox(
            height: 10,
          ),
          storiesCard("Where can I get some",
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          storiesCard("Where can I get some",
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          storiesCard("Where can I get some",
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          storiesCard("Where can I get some",
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          storiesCard("Where can I get some",
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          storiesCard("Where can I get some",
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          storiesCard("Where can I get some",
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          storiesCard("Where can I get some",
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          SizedBox(
            height: 10,
          ),
        ]),
      ]),
    );
  }
}
