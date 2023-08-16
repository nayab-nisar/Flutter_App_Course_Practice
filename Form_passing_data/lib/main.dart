import 'package:datapass/form.dart';
import 'package:datapass/list.dart';
import 'package:flutter/material.dart';
import './home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MyHome(),
      'form': (context) => const MyRegister(),
      'data': (context) => MyData()
    },
  ));
}
