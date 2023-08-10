import 'package:flutter/material.dart';
import 'package:form/chats.dart';
import 'package:form/forms.dart';
import 'package:form/switch.dart';

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
        primarySwatch: Colors.green,
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
          title: const Text(
            "FluxStore",
            style: TextStyle(fontSize: 23),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag,
                  size: 25,
                )),
            PopupMenuButton(
                icon: const Icon(Icons.menu),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      value: "Home",
                      child: Text("Home"),
                    ),
                    const PopupMenuItem(
                      value: "Settings",
                      child: Text("Settings"),
                    ),
                    const PopupMenuItem(
                      value: "profile",
                      child: Text("Profile"),
                    ),
                    const PopupMenuItem(
                      value: "History",
                      child: Text("History"),
                    )
                  ];
                })
          ],
          bottom: const TabBar(physics: BouncingScrollPhysics(), tabs: [
            Tab(
              child: Text("Chats"),
            ),
            Tab(
              child: Text("Calls"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Groups"),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          MyChat(),
          MySwitch(),
          MyForm(),
          Text("hello from groups")
        ]),
      ),
    );
  }
}
