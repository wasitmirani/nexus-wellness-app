import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/widgets/eventCard.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';

class Events extends StatefulWidget {
  Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(children: <Widget>[
        appBackgroundScreen(),
        ListView(children: <Widget>[
          appLogo(),
          SizedBox(
            height: 5,
          ),
        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Upcoming Events", style: kTitleStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child:
                Text("Here's Our Upcoming Events", style: ksubTitleGreenStyle),
          ),
          eventCard(
              "There are many variations of passages of Lorem Ipsum available",
              "https://intermountainhealthcare.org/-/media/images/modules/blog/posts/2020/02/coronavirus-covid-19-thumbnail-01.jpg?la=en&h=504&w=896&mw=896&hash=5B1D6BDF3DCEEC31D9A5BE788FA2C67D3FCBFA0B"),
          eventCard(
              "There are many variations of passages of Lorem Ipsum available",
              "https://intermountainhealthcare.org/-/media/images/modules/blog/posts/2020/02/coronavirus-covid-19-thumbnail-01.jpg?la=en&h=504&w=896&mw=896&hash=5B1D6BDF3DCEEC31D9A5BE788FA2C67D3FCBFA0B"),
        ]),
      ]),
    );
  }
}
