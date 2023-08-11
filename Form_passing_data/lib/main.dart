import 'package:flutter/material.dart';
// import 'package:form/list.dart';
import './home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      // '/list': (context) => const MyList(),
      // 'home': (context) => const MyHome()
    },
  ));
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String skill = "java";
//   // String skill = "kotlin";

//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text("Radio Button"),
//             ),
//             body: Row(
//               children: [
//                 const Text("Select Skills:  "),
//                 const Text("Java"),
//                 Radio(
//                   value: "java",
//                   onChanged: (value) {
//                     setState(() {
//                       skill = value.toString();
//                     });
//                   },
//                   groupValue: skill,
//                 ),
//                 const Text(" Kotlin"),
//                 Radio(
//                   value: "kotlin",
//                   onChanged: (value) {
//                     setState(() {
//                       skill = value.toString();
//                     });
//                   },
//                   groupValue: skill,
//                 )
//               ],
//             )));
//   }
// }



// onboarding code copid 
