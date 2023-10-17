import 'package:flutter/material.dart';
import 'package:elearn/Todo.dart';
import 'package:provider/provider.dart';
import 'package:elearn/TodoProvider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return TodoProvider();
      },
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todo-List",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => MyHomepage();
}

class MyHomepage extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo-List'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: context.watch<TodoProvider>().todoList.length,
          itemBuilder: (BuildContext context, int index) {
            final todo = context.watch<TodoProvider>().todoList[index];
            return ListTile(
              title: Text(todo.title),
              leading: Checkbox(
                value: todo.isDone,
                onChanged: (bool? value) {
                  context.read<TodoProvider>().toggleisDone(index);
                },
              ),
              trailing: IconButton(
                  onPressed: () {
                    context.read<TodoProvider>().removeTodo(index);
                  },
                  icon: Icon(Icons.remove)),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                TextEditingController tc = TextEditingController();
                return (AlertDialog(
                  title: const Text("Add Todo"),
                  content: TextField(
                    controller: tc,
                    decoration: const InputDecoration(),
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          context
                              .read<TodoProvider>()
                              .addTodo(Todo(title: tc.text, isDone: false));
                        },
                        child: Icon(Icons.add))
                  ],
                ));
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
