import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: table_widget(),
    );
  }
}

class switch_widget extends StatefulWidget {
  @override
  _switch_widgetState createState() => _switch_widgetState();
}

class _switch_widgetState extends State<switch_widget> {
  bool switch_state = false;
  var textValue = "Switch is ON";
  Color myColor = Colors.red;

  void display_state(bool value) {
    setState(() {
      switch_state = !switch_state;
      textValue = switch_state ? "Switch is ON" : "Switch is OFF";
      myColor = switch_state ? Colors.red : Colors.yellow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: myColor,
        appBar: AppBar(
          title: Text("Switch"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 50),
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 2,
                child: Switch(
                  onChanged: display_state,
                  value: switch_state,
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  activeTrackColor: Colors.black,
                ),
              ),
            ),
            Text('$textValue')
          ],
        ));
  }
}

class table_widget extends StatefulWidget {
  @override
  _table_widgetState createState() => _table_widgetState();
}

class _table_widgetState extends State<table_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Table(
          defaultColumnWidth: FixedColumnWidth(100),
          border: TableBorder.all(
            color: Colors.red,
            width: 3,
            style: BorderStyle.solid,
          ),
          children: [
            TableRow(children: [
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
            ]),
            TableRow(children: [
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
            ]),
            TableRow(children: [
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
            ]),
            TableRow(children: [
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
              Column(
                children: [Text("Name")],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
