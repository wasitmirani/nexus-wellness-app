import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/screens/LoginPage.dart';
import 'package:nexuswellness/screens/PlansScreen.dart';
import 'package:nexuswellness/screens/SplashScreen.dart';
import 'package:nexuswellness/screens/customizePlan.dart';
import 'package:nexuswellness/screens/events.dart';
import 'package:nexuswellness/screens/feeds.dart';
import 'package:nexuswellness/screens/freeMember.dart';
import 'package:nexuswellness/screens/home.dart';
import 'package:nexuswellness/screens/premiumPlan.dart';
import 'package:nexuswellness/screens/profile.dart';
import 'package:nexuswellness/screens/signupPage.dart';
import 'package:nexuswellness/screens/videos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nexus Wellness',
      theme: ThemeData(
        primaryColor: Color(kPrimaryColor),
        accentColor: Color(kPrimaryColor),
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      // Start the app with the "/" named route. In this case, the app starts

      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => LoginScreen(),
        '/login': (context) => LoginPage(),
        '/events': (context) => Events(),
        '/videos': (context) => Videos(),
        '/signup': (context) => SignupPage(),
        '/plans': (context) => PlansScreen(),
        '/profile': (context) => Profile(),
        '/free/member': (context) => FreePlan(),
        '/customize/plan': (context) => CustomizePlan(),
        '/premium/plan': (context) => PremiumPlan(),
        '/new/feeds': (context) => Feeds(),
      },
    );
  }
}
