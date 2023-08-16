import 'package:flutter/material.dart';

class MyData extends StatefulWidget {
  @override
  Data createState() => Data();
}

class Data extends State<MyData> {
  @override
  Widget build(BuildContext context) {
    List<String> data =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Data"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("User Name :: ${data[0]}"),
            const SizedBox(
              height: 20,
            ),
            Text("ID No :: ${data[2]}"),
            const SizedBox(
              height: 20,
            ),
            Text("Gender :: ${data[3]}"),
            const SizedBox(
              height: 20,
            ),
            // Text("User Name ${data[3]}"),
            // const SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}
