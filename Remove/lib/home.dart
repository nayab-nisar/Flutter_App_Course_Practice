import 'package:flutter/material.dart';
import 'package:mytest/about.dart';
import 'package:mytest/test3.dart';
import 'package:mytest/test4.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});
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
                    PopupMenuItem(
                      value: "Home",
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/about');
                        },
                        child: const Text("Item_deletion"),
                      ),
                    ),
                    PopupMenuItem(
                      value: "Settings",
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/test2');
                        },
                        child: const Text("Test2"),
                      ),
                    ),
                    PopupMenuItem(
                      value: "profile",
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/test3');
                        },
                        child: const Text("test3"),
                      ),
                    ),
                    PopupMenuItem(
                      value: "History",
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/test4');
                        },
                        child: const Text("Test4"),
                      ),
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
          MyAbout(),
          MyTest3(),
          MyTest4(),
          Text("hello from groups")
        ]),
      ),
    );
  }
}
