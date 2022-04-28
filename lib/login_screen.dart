import 'dart:developer';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //const LoginScreen({Key? key}) : super(key: key);
  String _username = "";

  String _passworld = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Parent Login",
                style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.teal.shade400,
                    fontFamily: "Fugaz One"),
              ),
              SizedBox(
                height: 10.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal.shade700,
                  thickness: 1.0,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    "UserName : ",
                    style:
                        TextStyle(color: Colors.teal.shade500, fontSize: 20.0),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (val) {
                      setState(() {
                        _username = val;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    "Password : ",
                    style:
                        TextStyle(color: Colors.teal.shade500, fontSize: 20.0),
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (val) {
                      setState(() {
                        _passworld = val;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text(
                      "Close",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: Colors.teal,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 100.0,
                  ),
                  RaisedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: Colors.teal,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                    onPressed: () {
                      debugPrint('username: $_username');
                      debugPrint('password: $_passworld');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/registration');
                },
                child: Text(
                  'Click Here to Register',
                  style: TextStyle(fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
