import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Image_slider(),
    );
  }
}

class Tool_Tip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTip"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Tooltip(
          waitDuration: Duration(seconds: 3),
          showDuration: Duration(seconds: 3),
          message: "Set alarm",
          textStyle: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: FlatButton(
            child: Icon(
              Icons.alarm,
              size: 150,
            ),
          ),
        ),
      ),
    );
  }
}

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(
              Icons.volume_up,
              size: 50,
            ),
          ),
          Expanded(
              child: Slider(
            value: _value.toDouble(),
            max: 20,
            min: 1,
            activeColor: Colors.green,
            inactiveColor: Colors.red,
            label: "Set Up Color",
            onChanged: (double newValue) {
              setState(() {
                _value = newValue.round();
              });
            },
          ))
        ],
      ),
    );
  }
}

class Image_slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: imageSLider(context),
      constraints: BoxConstraints.expand(
        height: 200,
      ),
    );
  }
}

Swiper imageSLider(BuildContext context) {
  return new Swiper(
    itemCount: 10,
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return Image.network(
        "https://images.unsplash.com/photo-1615879945870-751e4d99120a?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=60",
        // fit: BoxFit.cover,
      );
    },
  );
}
