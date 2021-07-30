import 'package:expandable/expandable.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';
import 'package:flutter/material.dart';

class PlansScreen extends StatefulWidget {
  PlansScreen({Key? key}) : super(key: key);

  @override
  _PlansScreenState createState() => _PlansScreenState();
}

class _PlansScreenState extends State<PlansScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(children: <Widget>[
      appBackgroundScreen(),
      ListView(
        children: <Widget>[
          appLogo(),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Plans For You..", style: kTitleStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Choose Best Plans For You", style: ksubTitleStyle),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Color(kPrimaryColor),
              height: 60,
              child: ExpandablePanel(
                header: Text(
                  "Hello",
                ),
                theme: ExpandableThemeData(
                  iconColor: Colors.white,
                ),
                collapsed: Text(
                  "This is Open",
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Text(
                  "This is dec Close",
                  softWrap: true,
                ),
              ),
            ),
          ),
        ],
      ),
    ]));
  }
}
