import 'package:flutter/material.dart';
import 'package:mytest/about.dart';
import 'package:mytest/home.dart';
import 'package:mytest/test2.dart';
import 'package:mytest/test3.dart';
import 'package:mytest/test4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const MyHome(),
        '/about': (context) => const MyAbout(),
        '/test2': (context) => MyTest2(),
        '/test3': (context) => const MyTest3(),
        '/test4': (context) => const MyTest4(),
      },
    );
  }
}
