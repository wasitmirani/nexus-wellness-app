import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/apiUrls.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/widgets/mainDrawer.dart';
import 'package:nexuswellness/widgets/mainwidgets.dart';
import 'package:nexuswellness/widgets/postCard.dart';
import 'package:nexuswellness/widgets/storiesCard.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Feeds extends StatefulWidget {
  Feeds({Key? key}) : super(key: key);

  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  List articles = [];
  bool loading = false;
  @override
  void initState() {
    super.initState();
    this.fetchArticles();
  }

  fetchArticles() async {
    setState(() {
      loading = true;
    });
    var url = articles_api_url;
    final response = await http.get(Uri.parse(url));

    // print(response.body);
    if (response.statusCode == 200) {
      var items = json.decode(response.body);
      if (items.length > 0) {
        setState(() {
          articles = items['articles'];

          loading = false;
        });
      } else {
        articles = [];
        loading = false;
      }
    }
  }

  Widget getArticles() {
    if (articles.contains(null) || articles.length < 0 || loading) {
      return Center(
          child: CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation<Color>(Color(kPrimaryColor)),
      ));
    }
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: 1000), // **THIS is the important part**
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => storiesCard(
            articles[index]['title'], articles[index]['description']),
        itemCount: articles.length,
      ),
    );
  }

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
        backgroundColor: Color(kblueColor),
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
          postCard("Lorem Ipsum",
              "here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Read Stories..", style: kTitleStyle),
          ),
          SizedBox(
            height: 10,
          ),
          getArticles(),
          SizedBox(
            height: 10,
          ),
        ]),
      ]),
    );
  }
}
