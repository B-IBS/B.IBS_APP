import 'package:bibs/HomeScreen.dart';
import 'package:bibs/LoginScreen.dart';
import 'package:bibs/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B.IBS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: loginRoute,
      onGenerateRoute: Router.generateRoute,
    );
  }
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
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
