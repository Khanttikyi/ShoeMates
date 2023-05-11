import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Shoe_Mates/login.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/mp4/solemate_1.mp4')
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
    Timer(const Duration(seconds: 25), () {
      Navigator.pushReplacement(
          context, CupertinoPageRoute(builder: (context) => const Login()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),
          // Positioned(
          //   bottom: 0,
          //   // padding: EdgeInsets.fromLTRB(0, 500, 0, 225),
          //   child: Container(
          //     width: double.infinity,
          //     // alignment: Alignment.center,
          //     decoration: BoxDecoration(
          //       color: Colors.white
          //     ),
          //     child: Text(
          //       "SOLEMATES",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontFamily: "airbnb",
          //           letterSpacing: 4.0,
          //           fontSize: 28.0,
          //           fontWeight: FontWeight.bold),
          //     textAlign: TextAlign.center,),
          //   ),
          // ),
          Positioned(
            // Widget fixed to the bottom
            left: 0,
            bottom: 5,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const Login()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                color: Color.fromARGB(162, 214, 215, 217),
                child: Center(
                  child: Text(
                    "SOLEMATES",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "airbnb",
                        letterSpacing: 7.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       Image.asset(
    //         "assets/backgrounds/background.jpeg",
    //         width: double.infinity,
    //         height: double.infinity,
    //         fit: BoxFit.fill,
    //       ),
    //       const SizedBox(
    //         width: double.infinity,
    //         height: double.infinity,
    //         child: Center(
    //           child: Text(
    //             "SOLEMATES",
    //             style: TextStyle(
    //                 color: Colors.white,
    //                 fontFamily: "airbnb",
    //                 fontSize: 28.0,
    //                 fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
