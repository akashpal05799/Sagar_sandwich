import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sagar_sandwich/screen/signin.dart';
import 'package:sagar_sandwich/screen/signup.dart';
import '../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => SignUp()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/sandwich.jpg'),
            SizedBox(
              height: 20,
            ),
            /*CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )*/
          ],
        ),
      ),
    );
  }
}
