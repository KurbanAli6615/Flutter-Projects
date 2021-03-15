import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  showToast() {
    Fluttertoast.showToast(
        msg: "This is notification",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.yellow,
        textColor: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Toast"),
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
              child: Text("This is Toast"),
              onPressed: () {
                showToast();
              },
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  List<String> images = [
    "https://images.unsplash.com/photo-1611095973512-45224aae1990?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2102&q=80",
    "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
    "https://images.unsplash.com/photo-1586611961063-ddc490f9fb51?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1615717899136-315597f11a2f?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1615568057392-8f933710de76?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1615715070496-d85daab3618d?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1615615228002-890bb61cac6e?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1611095973512-45224aae1990?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2102&q=80",
    "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
    "https://images.unsplash.com/photo-1586611961063-ddc490f9fb51?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1615717899136-315597f11a2f?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1615568057392-8f933710de76?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1615715070496-d85daab3618d?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOXx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
    "https://images.unsplash.com/photo-1615615228002-890bb61cac6e?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lists',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Grid List"),
          ),
          body: GridView.extent(
            maxCrossAxisExtent: 250,
            primary: false,
            padding: EdgeInsets.all(8),
            crossAxisSpacing: 10,
            children: [
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1615731439720-47878ecc1ac6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2102&q=80",
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          )),
    );
  }
}

// GridView.builder(
//           itemCount: images.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             mainAxisSpacing: 10,
//             crossAxisSpacing: 10,
//           ),
//           itemBuilder: (
//             BuildContext context,
//             int index,
//           ) {
//             return Container(
//                 height: 100,
//                 width: 100,
//                 child: Image.network(
//                   images[index],
//                   fit: BoxFit.cover,
//                 ));
//           },
//         ),
