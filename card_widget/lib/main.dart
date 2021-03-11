import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("card"),
        ),
        body: Padding(
          padding: EdgeInsets.all(28),
          child: Center(
            child: Container(
              height: 200,
              width: 300,
              // color: Colors.red,
              child: Card(
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                          size: 40,
                        ),
                        title: Text(
                          "KurbanAli",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text("Bsc (CA & IT)"),
                      ),
                    ),
                    ButtonBar(
                      children: [
                        RaisedButton(
                          onPressed: () {},
                          child: FloatingActionButton.extended(onPressed: () {}, label: Text("Location"),icon: Icon(Icons.location_on_rounded),),
                          color: Colors.blue,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          child: Icon(Icons.contact_mail),
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
