import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login Page',
        home: MyScreen());
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        color: Colors.red, borderRadius: BorderRadius.circular(20));
    return Scaffold(
      backgroundColor: Color(0xff2a2a32),
      // backgroundColor: Colors.black,
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.1,
              // color: Colors.lightGreen,
              child: Text(
                "Log In",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.grey,
                  fontSize: 55,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.only(top: 20),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  labelText: 'E-Mail',
                  hintText: 'Enter Your E-Mail',
                  icon: Icon(
                    Icons.person,
                    color: Colors.lightGreen,
                  )),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: EdgeInsets.only(top: 20),
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelText: 'Password',
                hintText: "Enter the password",
                icon: Icon(
                  Icons.lock,
                  color: Colors.lightGreen,
                ),
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.2),
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.width * 0.1,
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: RichText(
              text: TextSpan(
                  text: "Not have an account ? ",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                            decoration: TextDecoration.underline))
                  ]),
            )),
          )
        ],
      ),
    );
  }
}
