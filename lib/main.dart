import 'package:appp/data_test.dart';
import 'package:appp/test.dart';
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
  final Quest quest1 = Quest("Quest1");
  final Quest quest2 = Quest("Quest2");
  final Quest quest3 = Quest("Quest3");

  void _incrementCounter() {
    debugPrint("${quest1.name}${quest1.selected} , ${quest2.name}${quest2.selected} , ${quest3.name}${quest3.selected} ,");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DemoTestStateful(
              quest1,
              (selected) {
                quest1.selected = selected;
                // setState(() {
                //
                // });
              },
            ),
            DemoTestStateful(
              quest2,
              (selected) {
                quest2.selected = selected;
                // setState(() {
                //
                // });
              },
            ),
            DemoTestStateful(
              quest3,
              (selected) {
                quest3.selected = selected;
                // setState(() {
                //
                // });
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.next_plan),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
