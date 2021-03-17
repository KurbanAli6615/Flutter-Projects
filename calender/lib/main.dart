import 'package:flutter/material.dart';
import 'package:calender/main.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calender_widget(),
    );
  }
}

class Calender_widget extends StatefulWidget {
  @override
  _Calender_widgetState createState() => _Calender_widgetState();
}

class _Calender_widgetState extends State<Calender_widget> {
  CalendarController _controller;

  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calender"),
      ),
      body: Column(
        children: [
          TableCalendar(
            calendarController: _controller,
            calendarStyle: CalendarStyle(
              todayStyle: TextStyle(
                color: Colors.white,
              ),
              todayColor: Colors.blueGrey,
              selectedColor: Colors.red,
            ),
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonDecoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadiusDirectional.circular(30),
              ),
              // formatButtonShowsNext: false,
              formatButtonVisible: false,
            ),
          ),
        ],
      ),
    );
  }
}
