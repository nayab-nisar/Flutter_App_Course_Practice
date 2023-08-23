import 'package:flutter/material.dart';
import 'package:gester/app.dart';
import './home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const MyHome(),
      'app': (context) => const MyApp(),
      // 'data': (context) => MyData()
    },
  ));
}
