import 'package:flutter/material.dart';

class RestApi extends StatefulWidget {
  @override
  MyApi createState() => MyApi();
}

class MyApi extends State<RestApi> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hello Rest Api'),
    );
  }
}
