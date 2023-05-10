import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(context,
          CupertinoPageRoute(builder: (context) => const Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/backgrounds/background.jpeg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Text(
                "SOLEMATES",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "airbnb",
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
