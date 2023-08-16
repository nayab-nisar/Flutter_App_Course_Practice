import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  Home createState() => Home();
}

class Home extends State<MyHome> {
  // double scale = 1.0;
  Offset offset = const Offset(0.0, 0.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shoping Center"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          // onTap: () {
          //   ScaffoldMessenger.of(context)
          //       .showSnackBar(const SnackBar(content: Text("on Tap Function")));
          // },
          // onDoubleTap: () {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //       const SnackBar(content: Text("on  doubleTap Function")));
          // },
          // onLongPress: () {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //       const SnackBar(content: Text("on  Long-preesTap Function")));
          // },

          // sccalling
          // onScaleUpdate: (details) => {
          //   setState(() {
          //     scale = details.scale;
          //   })
          // },
          onPanUpdate: (details) => {
            setState(() {
              offset = Offset(
                  offset.dx + details.delta.dx, offset.dy + details.delta.dy);
              // initial value + drag value of x, similarry for y
            })
          },
          // child: Transform.scale(
          child: Transform.translate(
            offset: offset,
            child: Container(
              height: 400,
              width: double.infinity,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
