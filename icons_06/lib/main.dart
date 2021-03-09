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
             mainAxisAlignment : MainAxisAlignment.spaceEvenly,
             children: [
               Column(
                 children: [
                   Icon(
                     Icons.home,
                     color: Colors.green,
                     size: 40,
                     textDirection: TextDirection.rtl,
                   ),
                   Text("Hello")
                 ],
               ),
               Column(
                 children: [
                   Icon(
                     Icons.alarm,
                     color: Colors.green,
                     size: 40,
                     textDirection: TextDirection.rtl,
                   ),
                   Text("Alarm")
                 ],
               ),

               Column(
                 children: [
                   Icon(
                     Icons.delete,
                     color: Colors.green,
                     size: 40,
                     textDirection: TextDirection.rtl,
                   ),
                   Text("Delete")
                 ],
               ),
             ],
           ),
         ),
       ),
    );
  }
}
