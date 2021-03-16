import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Progress Bar"),
        ),
        body: Linear_progress_bar(),
      ),
    );
  }
}

class Linear_progress_bar extends StatefulWidget {
  @override
  _Linear_progress_barState createState() => _Linear_progress_barState();
}

class _Linear_progress_barState extends State<Linear_progress_bar> {
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(150),
              child: loading
                  ? LinearProgressIndicator(
                      backgroundColor: Colors.red,
                    )
                  : Text("Please click to download"),
            ),
          ),
          RaisedButton(
            child: Text("download"),
            onPressed: () {
              setState(() {
                loading = !loading;
              });
            },
            color: Colors.green,
          )
        ],
      ),
    );
  }
}

class Circular_progress_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 5,
          backgroundColor: Colors.lightGreen,
        ),
      ),
    );
  }
}

class Snack_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: RaisedButton(
          onPressed: () {
            final msg = SnackBar(
              content: Text("This is snackBar"),
              duration: Duration(seconds: 3),
            );
            Scaffold.of(context).showSnackBar(msg);
          },
          child: Text("Snack Bar"),
          color: Colors.red,
        ),
      ),
    );
  }
}
