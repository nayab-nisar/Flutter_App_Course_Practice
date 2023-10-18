import 'package:flutter/material.dart';
import 'package:provides/Screen/Rest-api.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Amaar Raza",
              style: TextStyle(fontSize: 27.0),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag,
                    size: 26,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 26,
                  )),
              //  Create a custom menu button
              PopupMenuButton(
                  icon: Icon(Icons.menu),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                          value: "Home",
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/");
                            },
                            icon: const Icon(
                              Icons.shop,
                              size: 27,
                              color: Colors.pink,
                            ),
                          )),
                      PopupMenuItem(
                          value: "Home",
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/");
                            },
                            icon: const Icon(
                              Icons.shop,
                              size: 27,
                              color: Colors.pink,
                            ),
                          )),
                      PopupMenuItem(
                          value: "Home",
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/");
                            },
                            icon: const Icon(
                              Icons.shop,
                              size: 27,
                              color: Colors.pink,
                            ),
                          )),
                      PopupMenuItem(
                          value: "Home",
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/");
                            },
                            icon: const Icon(
                              Icons.shop,
                              size: 27,
                              color: Colors.pink,
                            ),
                          )),
                    ];
                  })
            ],
            bottom: const TabBar(
              physics: BouncingScrollPhysics(),
              tabs: [
                Tab(child: Text('Chat')),
                Tab(child: Text('Status')),
                Tab(child: Text('Calls')),
                Tab(child: Text('Rest-Api'))
              ],
            ),
          ),
          body: TabBarView(children: [
            const Text("Hello from chat"),
            const Text("Hello from status"),
            const Text("Hello from calls"),
            RestApi(),
          ]),
        ));
  }
}
