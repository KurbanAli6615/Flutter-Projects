import 'package:flutter/material.dart';
import 'dart:async';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen2(),
    );
  }
}

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.network(
          "https://images.unsplash.com/photo-1613024000459-93917791e62a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YXBwJTIwc3BsYXNofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60"),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Text("Welcome Home"),
      ),
    );
  }
}

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: HomePage(),
      title: Text("E-Learning Platform"),
      image: Image.network(
          "https://images.unsplash.com/photo-1613024000459-93917791e62a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YXBwJTIwc3BsYXNofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60"),
      photoSize: 200,
      loadingText: Text("Loading text"),
      loaderColor: Colors.green,
    );
  }
}
