import 'package:flutter/material.dart';


class beethoven extends StatefulWidget {
  const beethoven
({ Key? key }) : super(key: key);

  @override
  State<beethoven
> createState() => _beethovenState();
}

class _beethovenState extends State<beethoven> {

  TextEditingController byaer = TextEditingController();
  TextEditingController dyaer = TextEditingController();
  double age = 56;
  TextEditingController result = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 60),
          child: Center(
              child: Column(
            children: [
              Text("Age-prediction",
                  style: TextStyle(
                      fontFamily: "OleoScriptSwashCaps-Bold", fontSize: 32)),
              SizedBox(height: 8),
              Image.asset("assets/Beethoven.jpg",
                  width: 350, height: 400, fit: BoxFit.fill),
              SizedBox(height: 8),
              Text("Input his Age",
                  style: TextStyle(
                      fontFamily: "OleoScriptSwashCaps-Bold",
                      color: Color.fromARGB(255, 59, 141, 218),
                      fontSize: 40)),
              SizedBox(height: 24),
              TextField(
                controller: byaer,
                decoration: InputDecoration(
                    labelText: "birth date yaer", border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
              TextField(
                controller: dyaer,
                decoration: InputDecoration(
                    labelText: "death date yaer", border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    var resultage =
                        (int.parse(dyaer.text)-1) - int.parse(byaer.text);
                    print(
                        "you had been answer his birth date yaer is ${byaer.text}");
                    print(
                        "you had been answer his death date yaer is ${dyaer.text}");

                    setState(() {
                      result.text =
                          "you had been answer his age is ${resultage}";
                    });
                  },
                  child: Text("prediction",
                      style: TextStyle(
                          fontFamily: "OleoScriptSwashCaps-Regular",
                          fontSize: 24))),
              SizedBox(height: 24),
              Text(
                  "Ludwig van Beethoven, (baptized December 17, 1770, Bonn, archbishopric of Cologne [Germany]—died March 26, 1827, Vienna, Austria), German composer, the predominant musical figure in the transitional period between the Classical and Romantic eras.",
                  style: TextStyle(
                      fontFamily: "OleoScriptSwashCaps-Regular", fontSize: 16)),
              Text(result.text,
                  style: TextStyle(
                      fontFamily: "OleoScriptSwashCaps-Regular",
                      fontSize: 20,
                      color: Color.fromARGB(255, 226, 90, 26)))
            ],
          )),
        ),
      ],

      
    );
  }
}