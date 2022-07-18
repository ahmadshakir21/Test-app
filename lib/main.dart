import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Flutter'),
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
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: Card(
                    color: Colors.pink.shade200,
                    child: const ListTile(
                      title: Center(
                          child: Text("Title",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))),
                      subtitle: Center(child: Text("SubTitle")),
                    ),
                  ),
                )));
  }
}
