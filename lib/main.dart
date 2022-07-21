import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
  final nameController = TextEditingController();
  final authorController = TextEditingController();
  final priceConttroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference bookRef =
        FirebaseFirestore.instance.collection("books");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter & Firebase"),
      ),
      body: Center(
        child: StreamBuilder(
            stream: bookRef.snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else {
                return ListView(
                    children: snapshot.data!.docs.map((book) {
                  final dynamic data = book.data();
                  return Center(
                    child: ListTile(
                      title: Text(data['title'] ?? ""),
                      subtitle: Text(data['author'] ?? ""),
                      trailing: Text(data['price'] ?? ""),
                    ),
                  );
                }).toList());
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Center(
            child: Icon(
          Icons.add,
          size: 50,
        )),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Adding Book"),
            content:
                const Text("Filling this below information for adding a book"),
            actions: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      width: 70,
                      child: const Text("Name : ")),
                  Expanded(
                    child: Container(
                      width: 220,
                      height: 30,
                      child: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)))),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      width: 70,
                      child: const Text("Author : ")),
                  Expanded(
                    child: Container(
                      width: 220,
                      height: 30,
                      child: TextField(
                          controller: authorController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)))),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(10),
                      width: 70,
                      child: const Text("Price : ")),
                  Expanded(
                    child: Container(
                      width: 220,
                      height: 30,
                      child: TextField(
                          controller: priceConttroller,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)))),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    bookRef.add({
                      'title': nameController.text,
                      'author': authorController.text,
                      'price': priceConttroller.text
                    });
                  },
                  child: const Text("Add"))
            ],
          ),
        ),
      ),
    );
  }
}
