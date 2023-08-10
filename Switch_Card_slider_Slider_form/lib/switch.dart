import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({Key? key}) : super(key: key);

  @override
  State<MySwitch> createState() => _Switch();
}

class _Switch extends State<MySwitch> {
  bool values = false;
  Widget build(BuildContext context) {
    // bool theme = false;
    return Center(
      child: Column(
        children: <Widget>[
          Switch(
            value: values,
            onChanged: (value) {
              setState(() {
                values = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
// doube.infinity use to give width according to different screens