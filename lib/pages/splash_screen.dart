import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, LoginScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height/2,

          child: Image.asset(
            "assets/images/instagram_logo.png",
            height: 60,
            width: 60,
            fit: BoxFit.cover,
          ),
        ),

        Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height/2,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
             const Text("from", style: TextStyle(color: Colors.grey),),
              Image.asset(
                "assets/images/meta_logo.png",
                height: 30,
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
             const SizedBox(height: 30,),
            ],
          ),
        ),

      ],
    ));
  }
}
