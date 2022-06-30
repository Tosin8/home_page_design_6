import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Home Design Design', home: MyCustomUi()));
}

class MyCustomUi extends StatefulWidget {
  const MyCustomUi({Key? key}) : super(key: key);

  @override
  State<MyCustomUi> createState() => _MyCustomUiState();
}

class _MyCustomUiState extends State<MyCustomUi> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
