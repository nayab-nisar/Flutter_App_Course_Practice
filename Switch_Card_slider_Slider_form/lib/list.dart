import 'package:flutter/material.dart';

void main() {
  runApp(const MyList());
}

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
      ),
      home: const List(),
    );
  }
}

class List extends StatelessWidget {
  const List({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rahman Mall"),
      ),
    );
  }
}
