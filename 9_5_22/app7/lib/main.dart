import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.piano),
            onPressed: () {},),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ],
            elevation: 20,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://media0.giphy.com/media/7NOl0pDVjdbumf57y0/giphy.gif?cid=ecf05e47onvh77v8agikzs3rg7cxiysw244ezfr9q3xhz3mj&rid=giphy.gif&ct=g"),
                  fit: BoxFit.cover
                )
              ),
            ),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.list_alt),text: "Feed",),
              Tab(icon: Icon(Icons.person),text: "Profile",),
              Tab(icon: Icon(Icons.settings),text: "Settings",),
            ]),
        ),
        body: Center(
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                color: Color.fromARGB(255, 77, 73, 73),
                alignment: const Alignment(0, -1),
                child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 300.0),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 175, 158, 158),
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(0, 0),
                child: Container(
                  margin: const EdgeInsets.only(left: 40.0, right: 0.0, top: 20.0),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 233, 127, 65),
                  ),
                ),
              ),
               Container(
                alignment: const Alignment(0, 0),
                child: Container(
                  margin: const EdgeInsets.only(left: 20.0,top: 100.0),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 44, 101, 148),
                  ),
                ),
              )
            ],
          )
        )
      ),
    );
  }
}
