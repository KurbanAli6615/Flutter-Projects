import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Icons",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icons Widget"),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Column(
                children: [
                  Image.asset("assets/a.jpg",width: 300,),
                  Text("Wēãpøn X",style: TextStyle(
                    fontSize: 30
                  ),
                  ),
                  Spacer(),
                  Image.network("https://media.giphy.com/media/YWUpVw86AtIbe/giphy.gif",width: 200,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
