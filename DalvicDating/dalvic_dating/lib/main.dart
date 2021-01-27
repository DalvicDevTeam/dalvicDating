import 'package:flutter/material.dart';
import 'screens/IndexPage.dart';
import 'screens/PhoneRegistration.dart';
import 'screens/PhoneVerification.dart';
import 'screens/AddProfile.dart';
import 'screens/MainScreen.dart';


void main() => runApp(DalvicDating());

class DalvicDating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) =>IndexPage(),
        '/phone_registration': (context) => PhoneRegistration(),
        '/phone_verification': (context) => PhoneVerification(),
        '/add_profile':(context) => AddProfile(),
        '/home':(context) => MainScreen(),
      },
    );
  }
}
