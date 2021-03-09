import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Forms",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Forms"),
        ),
        body: Forms(),
      ),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keys,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter Your Name",
                icon: Icon(Icons.person)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Fill the details';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter Your Password",
                icon: Icon(Icons.lock)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Fill the details';
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: "GitHub",
                hintText: "GitHub Link",
                icon: Icon(Icons.link)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Fill the details';
              }
              return null;
            },
          ),
          Container(
            child: RaisedButton(
              onPressed: () {
                if (keys.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Validations going on"),
                  ));
                }
              },
              child: Text("Submit "),
            ),
          )
        ],
      ),
    );
  }
}
