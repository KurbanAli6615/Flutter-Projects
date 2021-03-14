import 'package:flutter/material.dart';
import 'package:list_flutter/newcard.dart';

void main() {
  runApp(MyApp4());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lists',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Lists"),
          ),
          body: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("settings"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Mail"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          )),
    );
  }
}

class MyApp2 extends StatelessWidget {
  final List<String> names;
  MyApp2({Key key, this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lists',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Long List"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${names[index]}"),
            );
          },
          itemCount: names.length,
        ),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lists',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Grid List"),
          ),
          body: GridView.count(
              crossAxisCount: 2,
              children: List.generate(datas.length, (index) {
                return Center(
                  child: newcard(
                    datas: datas[index],
                  ),
                );
              }))),
    );
  }
}

class data {
  const data({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<data> datas = const <data>[
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
  const data(title: 'Home', icon: Icons.home),
];

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lists',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Horizontal List"),
        ),
        body: Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 148,
                color: Colors.red,
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
              ),
              Container(
                width: 148,
                color: Colors.green,
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Profile"),
                ),
              ),
              Container(
                width: 148,
                color: Colors.yellow,
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Setting"),
                ),
              ),
              Container(
                width: 148,
                color: Colors.blue,
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
