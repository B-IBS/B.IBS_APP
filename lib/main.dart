
import 'package:bibs/ForgotPasswordScreen.dart';
import 'package:bibs/FodmapModule.dart';
import 'package:bibs/FoodCheckerModule.dart';
import 'package:bibs/Navigation.dart';
import 'package:bibs/LoginScreen.dart';
import 'package:bibs/colors.dart';
import 'package:bibs/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B.IBS',
      theme: ThemeData(
        primarySwatch: bibsGreen,
      ),
      initialRoute: homeRoute,//loginRoute,
      onGenerateRoute: Router.generateRoute,
    );
  }
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => NavigationScreen());
      case fodmapRoute:
        return MaterialPageRoute(builder: (_) => FodmapModule());
      case foodCheckerRoute:
        return MaterialPageRoute(builder: (_) => FoodCheckerModule());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case forgotPwdRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      default:
        return MaterialPageRoute(builder: (_) =>
          Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}')
            )
          )
        );
    }
  }
}
