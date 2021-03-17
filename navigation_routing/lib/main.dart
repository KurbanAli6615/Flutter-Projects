import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: FirstScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstScreen"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Click Me to navigate"),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SecondScreen"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Click Me to back"),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
