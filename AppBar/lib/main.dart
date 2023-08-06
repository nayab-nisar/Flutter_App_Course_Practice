import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const WhatsApp(),
    );
  }
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              // IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              PopupMenuButton(
                icon: const Icon(Icons.menu),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                        value: "settings", child: Text("Settigns")),
                    const PopupMenuItem(value: "logout", child: Text("Log Out"))
                  ];
                },
                onSelected: (value) => {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('$value selected'),
                    duration: const Duration(milliseconds: 4000),
                    action: SnackBarAction(
                        label: "Clieked here bro", onPressed: () {}),
                  ))
                },
              )
            ],
            bottom: const TabBar(physics: BouncingScrollPhysics(), tabs: [
              Tab(child: Text("Chats")),
              Tab(child: Text("Calls")),
              Tab(child: Text("Status")),
              Tab(child: Text("Comunity")),
            ]),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      tileColor: Colors.blue,
                      leading: const Icon(Icons.car_rental),
                      title: const Text("Lessons"),
                      trailing: IconButton(
                          color: Colors.black,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.arrow_forward)),
                    ),
                  ],
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    print("this text is from on tap function");
                  },
                  child: Container(
                    height: 50,
                    child: ElevatedButton(
                      child: Text('Text Me'),
                      onPressed: () {
                        print("Clicked on Button");
                      },
                    ),
                  ),
                ),
              ),
              // cards stying
              Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.album),
                        title: Text('The Enchanted Nightingale'),
                        subtitle: Text(
                            'Music by Julie Gable. Lyrics by Sidney Stein.'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('BUY TICKETS'),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                          TextButton(
                            child: const Text('LISTEN'),
                            onPressed: () {/* ... */},
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Text("Communities"),
            ],
          )),
    );
  }
}



// void main() {
//   runApp(
//     MaterialApp(
//         title: "Chat App",
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           scaffoldBackgroundColor: Color.fromARGB(255, 255, 167, 167),
//           primaryColor: Colors.amberAccent,
//         ),
//         home: Scaffold(
//           backgroundColor: Colors.blue.shade200,
//           appBar: AppBar(
//             leading: const Text("A"),
//             centerTitle: true,
//             title: const Text(
//               "Chatter",
//               style: TextStyle(
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Roboto'),
//             ),
//             // title: Image.asset('assets/images/logo.png'),

//             flexibleSpace: Container(
//               decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: <Color>[Colors.red, Colors.blue])),
//             ),
//           ),
//           // ),
//           body: Container(
//             child: Text(
//               'Hello World',
//               style:
//                   TextStyle(fontSize: 30.0, color: Colors.deepPurple.shade400),
//             ),
//           ),
//         )),
//   );
// }




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


// Snack bars
