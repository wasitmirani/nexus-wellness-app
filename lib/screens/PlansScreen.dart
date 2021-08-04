import 'package:expandable/expandable.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';
import 'package:flutter/material.dart';
import 'package:nexuswellness/widgets/planswidgets.dart';

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
          // Free Member Widget
          freeMemberTile(context),
          customizePlaneTile(context),
          premiumPlanTile(context),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.white,
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 60,
                    icon: Image.asset('images/icons/medical.png'),
                    tooltip: 'medical',
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 60,
                    icon: Image.asset('images/icons/books.png'),
                    tooltip: 'books',
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 60,
                    icon: Image.asset('images/icons/drtool.png'),
                    tooltip: 'tools',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ]));
  }
}
