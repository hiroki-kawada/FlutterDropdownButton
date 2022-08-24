import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String? isSelectedItem = 'orange';
  final lists = <String>["orange", "apple", "strawberry", "banana", "grape"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: isSelectedItem,
          items: lists
              .map((String list) =>
              DropdownMenuItem(value: list, child: Text(list)))
              .toList(),
          onChanged: (String? value) {
            setState(() {
              isSelectedItem = value!;
            });
          },
        ),
      ),
    );
  }
}
