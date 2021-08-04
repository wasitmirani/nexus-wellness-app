import 'package:flutter/material.dart';
import 'package:nexuswellness/assets/constants.dart';
import 'package:nexuswellness/screens/LoginPage.dart';
import 'package:nexuswellness/screens/PlansScreen.dart';
import 'package:nexuswellness/screens/SplashScreen.dart';
import 'package:nexuswellness/screens/customizePlan.dart';
import 'package:nexuswellness/screens/freeMember.dart';
import 'package:nexuswellness/screens/home.dart';
import 'package:nexuswellness/screens/premiumPlan.dart';
import 'package:nexuswellness/widgets/planswidgets.dart';

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
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SplashScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => const LoginScreen(),
        '/login': (context) => LoginPage(),
        '/plans': (context) => PlansScreen(),
        '/free/member': (context) => FreePlan(),
        '/customize/plan': (context) => CustomizePlan(),
        '/premium/plan': (context) => PremiumPlan(),
      },
    );
  }
}
