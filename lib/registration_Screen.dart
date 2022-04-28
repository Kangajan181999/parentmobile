import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Parent SignUp",
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
                    "Email : ",
                    style:
                        TextStyle(color: Colors.teal.shade500, fontSize: 20.0),
                  ),
                  title: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (val) {
                      setState(() {});
                    },
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    "Password : ",
                    style:
                        TextStyle(color: Colors.teal.shade500, fontSize: 20.0),
                  ),
                  title: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (val) {
                      setState(() {});
                    },
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Text(
                    "Re-Password : ",
                    style:
                        TextStyle(color: Colors.teal.shade500, fontSize: 20.0),
                  ),
                  title: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (val) {
                      setState(() {});
                    },
                  ),
                ),
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
                      "Register",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: Colors.teal,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.grey,
                    onPressed: () {},
                  ),
                ],
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: Text(
                  'Click Here to Login',
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
