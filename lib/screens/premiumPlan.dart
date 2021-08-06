import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/screens/PlansScreen.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';

class PremiumPlan extends StatefulWidget {
  PremiumPlan({Key? key}) : super(key: key);

  @override
  _PremiumPlanState createState() => _PremiumPlanState();
}

class _PremiumPlanState extends State<PremiumPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(kblueColor),
        elevation: 0,
      ),
      body: new Stack(children: <Widget>[
        planBgScreen("premiumplanbg.png"),
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
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Text("Premium Plan  For You", style: kTitleStyle),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
                  child: Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form,",
                    textAlign: TextAlign.justify,
                  ),
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
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(kblueColor), // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/new/feeds');
                      },
                      child: Text('Claim Free Plan'),
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
