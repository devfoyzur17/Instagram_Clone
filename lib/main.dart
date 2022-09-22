import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/login_screen.dart';
import 'package:instagram_clone/pages/sign_up_page.dart';
import 'package:instagram_clone/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen(),
        LoginScreen.routeName : (context) => const LoginScreen(),
        SignUpPage.routeName : (context) =>  SignUpPage(),
      },
    );
  }
}

