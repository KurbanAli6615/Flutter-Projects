import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget button(String btnText) {
    return Expanded(
      child: RawMaterialButton(
        child: Text(
          "$btnText",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        splashColor: Colors.black,
        fillColor: Colors.blueGrey,
        padding: EdgeInsets.all(20),
        shape: Border.all(color: Colors.black, width: 2),
        onLongPress: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Container(
                child: Text(
                  "Output",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    color: Colors.lightGreen),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(bottom: 8),
              )),
              Row(
                children: [
                  button("c"),
                  SizedBox(
                    width: 5,
                  ),
                  button("0"),
                  SizedBox(
                    width: 5,
                  ),
                  button("*"),
                  SizedBox(
                    width: 5,
                  ),
                  button("/")
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  button("9"),
                  SizedBox(
                    width: 5,
                  ),
                  button("8"),
                  SizedBox(
                    width: 5,
                  ),
                  button("7"),
                  SizedBox(
                    width: 5,
                  ),
                  button("+")
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  button("6"),
                  SizedBox(
                    width: 5,
                  ),
                  button("5"),
                  SizedBox(
                    width: 5,
                  ),
                  button("4"),
                  SizedBox(
                    width: 5,
                  ),
                  button("-")
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  button("3"),
                  SizedBox(
                    width: 5,
                  ),
                  button("2"),
                  SizedBox(
                    width: 5,
                  ),
                  button("1"),
                  SizedBox(
                    width: 5,
                  ),
                  button("=")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
