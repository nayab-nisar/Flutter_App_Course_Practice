import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        title: "Chat App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 167, 167),
          primaryColor: Colors.amberAccent,
        ),
        home: Scaffold(
          backgroundColor: Colors.blue.shade200,
          appBar: AppBar(
            leading: const Text("A"),
            centerTitle: true,
            title: const Text(
              "Chatter",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
            // title: Image.asset('assets/images/logo.png'),

            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.red, Colors.blue])),
            ),
          ),
          // ),
          body: Container(
            child: Text(
              'Hello World',
              style:
                  TextStyle(fontSize: 30.0, color: Colors.deepPurple.shade400),
            ),
          ),
        )),
  );
}




// void main() {
//   runApp(
//     MaterialApp(
//       title: "First Appr",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         scaffoldBackgroundColor: const Color.fromARGB(255, 38, 38, 38),
//         // primaryColor: Colors.amberAccent,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Abdullah"),
//           backgroundColor: Color.fromARGB(255, 162, 248, 108),
//         ),
//         body: Center(
//           child: ListView(
//             // mainAxisAlignment: MainAxisAlignment.center,

//             children: [
//               const Text(
//                 "Hello",
//                 style: TextStyle(
//                   color: Color.fromARGB(255, 163, 233, 98),
//                   fontSize: 40.0,
//                 ),
//               ),
//               const Text(
//                 "Mr Developer Welcome to our App",
//                 style: TextStyle(
//                   color: Colors.cyanAccent,
//                   fontSize: 30.0,
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   ElevatedButton(
//                       onPressed: () => {}, child: const Text("Login")),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   ElevatedButton(
//                       onPressed: () => {}, child: const Text("Sign Up")),
//                   OutlinedButton(
//                       onPressed: () => {}, child: const Text("Hover me")),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
