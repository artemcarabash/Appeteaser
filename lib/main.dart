import 'package:flutter/material.dart';
import 'package:appeteaser_app/routes.dart';
import 'package:appeteaser_app/screens/home/home_screen.dart';
import 'package:appeteaser_app/screens/splash/splash_screen.dart';
import 'package:appeteaser_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'QualityFood',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
      home: HomeScreen(),
    );
  }
}
