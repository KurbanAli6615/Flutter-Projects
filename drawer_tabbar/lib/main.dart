import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Drawer_tabBar', home: TABBAR());
  }
}

class TABBAR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            backgroundColor: Colors.teal,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.local_grocery_store),
                  text: "Store",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Setting",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              Scaff(),
              SettingPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class Scaff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
        ),
        drawer: Drawer(
          child: ListView(
            // padding: EdgeInsets.all(20),
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("KurbanAli"),
                accountEmail: Text("kurban@gmail.com"),
                currentAccountPicture: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage("ass/x.jpg"), fit: BoxFit.cover)),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.local_grocery_store),
                title: Text("Store"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
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
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            label: Text("Location"),
                            icon: Icon(Icons.location_on_rounded),
                          ),
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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          "Hello, Welcome to Home",
          style: TextStyle(
              color: Colors.teal, fontSize: 40, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          "Hello, Welcome to Store",
          style: TextStyle(
              color: Colors.teal, fontSize: 40, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
          "Hello, Welcome to Settings",
          style: TextStyle(
              color: Colors.teal, fontSize: 40, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
