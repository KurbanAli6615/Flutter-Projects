import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "0";
  String _output = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = "";

  operation(String btnText) {
    if (btnText == "C") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "*" ||
        btnText == "/") {
      num1 = double.parse(output);
      operand = btnText;
      _output = "0";
    } else if (btnText == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "*") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      _output = _output + btnText;
    }

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

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
        onPressed: () {
          operation(btnText);
        },
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
                  "$output",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    color: Colors.black12),
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(bottom: 8),
              )),
              Row(
                children: [
                  button("C"),
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
