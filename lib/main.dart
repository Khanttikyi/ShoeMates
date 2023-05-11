import 'package:Shoe_Mates/View/home_page.dart';
import 'package:Shoe_Mates/login.dart';
import 'package:flutter/material.dart';

import 'View/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/home': (context) => Home(),
      },
      // home: SplashScreen(),
    );
  }
}
