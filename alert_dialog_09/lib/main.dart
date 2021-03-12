import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alert",
      debugShowCheckedModeBanner: false,
      home: AlertWidget(),
    );
  }
}

class AlertWidget extends StatelessWidget {
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Alert"),
            onPressed: () async {
              // textfieldalertDialogWidget(context, _textEditingController);
              // final field fieldatt = await confirmalertDialogWidget(context);
              // print("User Selection : $fieldatt");
              final selection select =
                  await selectionalertDialogWidget(context);
              print(select);
            },
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

alertDialogWidget(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Basic"),
          content: Text("This is basic alert"),
          actions: [
            RaisedButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.green,
            )
          ],
        );
      });
}

textfieldalertDialogWidget(
    BuildContext context, TextEditingController textEditingController) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Basic"),
          content: TextField(
            decoration:
                InputDecoration(hintText: "Enter Name", labelText: "Name"),
          ),
          actions: [
            RaisedButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.green,
            )
          ],
        );
      });
}

enum field { Confirm, Accepted }
enum selection { C, Java, Python, Dart }

Future<field> confirmalertDialogWidget(BuildContext context) async {
  showDialog<field>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Basic"),
          content: Text("This is notification"),
          actions: [
            RaisedButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop(field.Confirm);
              },
              color: Colors.green,
            ),
            RaisedButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop(field.Accepted);
              },
              color: Colors.green,
            ),
          ],
        );
      });
}

Future<selection> selectionalertDialogWidget(BuildContext context) async {
  return showDialog<selection>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Choose One"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selection.C);
              },
              child: Text("C"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selection.Java);
              },
              child: Text("Java"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selection.Python);
              },
              child: Text("Python"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, selection.Dart);
              },
              child: Text("Dart"),
            ),
          ],
        );
      });
}
