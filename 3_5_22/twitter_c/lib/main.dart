import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController Username = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 60),
          child: Center(
              child: Column(
            children: [
              SizedBox(height: 48),
              Text("Instagram",
                  style: TextStyle(
                      fontFamily: "OleoScriptSwashCaps-Regular", fontSize: 40)),
              SizedBox(height: 48),
              TextField(
                controller: Username,
                decoration: InputDecoration(
                    labelText: "Phone number,username, or email",
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
              TextField(
                controller: Password,
                decoration: InputDecoration(
                    labelText: "Password", border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("Log in"),
                  )),
              SizedBox(height: 32),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Color.fromARGB(255, 70, 68, 68),
                        height: 36,
                      )),
                ),
                Text("OR"),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Color.fromARGB(255, 70, 68, 68),
                        height: 36,
                      )),
                ),
              ]),
              SizedBox(height: 32),
              Text("Log in with Facebook",
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 29, 104), fontSize: 16)),
              SizedBox(height: 18),
              Text("Forgot password?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 29, 104), fontSize: 12)),
            ],
          )),
        ),
      ],
    );
  }
}
