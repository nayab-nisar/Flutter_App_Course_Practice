// import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;

// // import 'package:http/http.dart';
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//   @override
//   App createState() => App();
// }

// class App extends State<MyApp> {
//   // double scale = 1.0;
//   String time = "";
//   Stream<String> getData() async* {
//     while (true) {
//       await Future.delayed(const Duration(seconds: 1));
//       DateTime dateTime = DateTime.now();
//       yield "${dateTime.hour}: ${dateTime.minute} : ${dateTime.second}";
//     }
//   }

//   // Future<String> getData() async {
//   //   await Future.delayed(const Duration(milliseconds: 5000));
//   //   return "Greetings!";
//   // }
//   // Future<String> getData() async {
//   //   try {
//   //     final response = await http
//   //         .get(Uri.parse("https://www.anapioficeandfire.com/api/books"));
//   //     return response.body;
//   //   } catch (e) {
//   //     // print(e);
//   //     return "$e";
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Shoping Center"),
//         ),
//         body: Center(
//           child: FutureBuilder(
//             Stream: getData(),
//             builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const CircularProgressIndicator();
//               } else if (snapshot.hasError) {
//                 return Text("${snapshot.error}");
//               } else {
//                 return Text("${snapshot.data}");
//               }
//             },
//           ),
//         ));
//   }
// }


// //  command use to flutter package
// // flutter pub add package-name