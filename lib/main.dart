import 'package:flutter/material.dart';
import 'package:material_kit_flutter/screens/checkout.dart';
import 'package:material_kit_flutter/screens/chef-detail.dart';
import 'package:material_kit_flutter/screens/home.dart';
import 'package:material_kit_flutter/screens/login.dart';
import 'package:material_kit_flutter/screens/register.dart';

// screens
import 'screens/home.dart';
import 'screens/profile.dart';
import 'screens/settings.dart';
import 'screens/components.dart';
import 'screens/onboarding.dart';
import 'screens/change-password.dart';
import 'screens/sendotp.dart';
import 'screens/chef-list.dart';
import 'screens/asian-chef-list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Chef for Everyone",
        debugShowCheckedModeBanner: false,
        initialRoute: "/checkout",
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/login": (BuildContext context) => new LoginPage(),
          "/sendotp": (BuildContext context) => new SendOtp(),
          "/change-password": (BuildContext context) => new ChangePassword(),
          "/register": (BuildContext context) => new RegisterPage(),
          "/home": (BuildContext context) => new MainHome(),
          "/components": (BuildContext context) => new Components(),
          "/profile": (BuildContext context) => new Profile(),
          "/settings": (BuildContext context) => new Settings(),
          "/chef-list": (BuildContext context) => new ChefList(),
          "/chef-detail": (BuildContext context) => new CheftDetail(),
          "/asian-chef-list": (BuildContext context) => new AsianChefList(),
          "/checkout": (BuildContext context) => new checkout(),
        });
  }
}
