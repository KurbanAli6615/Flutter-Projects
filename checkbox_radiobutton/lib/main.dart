import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

enum Gender { Male, Female, Other, Not_to_say }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool firstBox = false;
  bool secondBox = false;
  bool thirdBox = false;

  Gender gender = Gender.Male;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("CheckBox - RadioButton"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Hobby",
                style: TextStyle(fontSize: 30),
              ),
              Row(
                children: [
                  Checkbox(
                      value: this.firstBox,
                      onChanged: (bool value) {
                        setState(() {
                          this.firstBox = value;
                        });
                      }),
                  Text("Painting"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.red,
                      value: this.secondBox,
                      onChanged: (bool value) {
                        setState(() {
                          this.secondBox = value;
                        });
                      }),
                  Text("Sports"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.green,
                      value: this.thirdBox,
                      onChanged: (bool value) {
                        setState(() {
                          this.thirdBox = value;
                        });
                      }),
                  Text("Sports"),
                ],
              ),
              CheckboxListTile(
                title: Text("Terms & Conditions"),
                value: this.firstBox,
                secondary: Icon(Icons.call),
                subtitle: Text("Hello How are you?"),
                onChanged: (bool value) {
                  setState(() {
                    this.firstBox = value;
                  });
                },
              ),
              SizedBox(height: 40),
              ListTile(
                leading: Radio(
                  value: Gender.Male,
                  groupValue: gender,
                  onChanged: (Gender value) {
                    setState(() {
                      this.gender = value;
                    });
                  },
                ),
                title: Text("Male"),
              ),
              ListTile(
                leading: Radio(
                  value: Gender.Female,
                  groupValue: gender,
                  onChanged: (Gender value) {
                    setState(() {
                      this.gender = value;
                    });
                  },
                ),
                title: Text("Female"),
              ),
              ListTile(
                leading: Radio(
                  value: Gender.Other,
                  groupValue: gender,
                  onChanged: (Gender value) {
                    setState(() {
                      this.gender = value;
                    });
                  },
                ),
                title: Text("Other"),
              ),
              ListTile(
                leading: Radio(
                  value: Gender.Not_to_say,
                  groupValue: gender,
                  onChanged: (Gender value) {
                    setState(() {
                      this.gender = value;
                    });
                  },
                ),
                title: Text("Prefer not to say"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
