import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Navigaton Tab and Drawer",
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
        )),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                title: const Text("Tabs Test"),
                bottom: const TabBar(
                    indicatorColor: Colors.black54,
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.black38,
                    tabs: [
                      Tab(icon: Icon(Icons.home)),
                      Tab(icon: Icon(Icons.search)),
                    ]),
              ),
              body: const TabBarView(
                children: [
                  MyAppHome(),
                  SecondPage(),
                ],
              )),
        ));
  }
}

class MyAppHome extends StatefulWidget {
  const MyAppHome({Key? key}) : super(key: key);
  final title = 'Home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  final title = 'Second';
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.title),
      ),
    );
  }
}
