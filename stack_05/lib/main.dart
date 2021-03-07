import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stack",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stack"),
          ),
          body: Center(
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      "Hello",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
