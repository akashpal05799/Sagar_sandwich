import 'package:flutter/material.dart';
import 'package:sagar_sandwich/screen/signup.dart';
import 'package:sagar_sandwich/screen/splash.dart';
import 'package:sagar_sandwich/screen/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  SplashScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,

        ),
      ),
      ),
    );
  }
}