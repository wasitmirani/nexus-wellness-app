import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/constants.dart';

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
      body: Text("hello"),
      drawer: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
          child: Drawer(
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Lee Wang",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Software Engenieer",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  flex: 3,
                  child: ListView(children: [
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Account'),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.share,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Projects'),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.article_rounded,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Stories'),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.article_rounded,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Review'),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.supervised_user_circle_outlined,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Share With Friends'),
                    ),
                    ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.info,
                          color: Colors.black,
                        ),
                      ),
                      title: Text('Info'),
                    ),
                  ]),
                )
              ],
            ),
          )),
    );
  }
}
