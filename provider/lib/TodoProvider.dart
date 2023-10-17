import 'package:flutter/material.dart';
import 'package:elearn/Todo.dart';

class TodoProvider with ChangeNotifier {
  List<Todo> todos = [];

  List<Todo> get todoList => todos;

  // List<Todo> getTodos(){
  //   List(Todo) todoList =todos;
  //   return todoList;
  // }

  addTodo(Todo todo) {
    todos.add(todo);
    notifyListeners();
  }

  removeTodo(int index) {
    todos.removeAt(index);
    notifyListeners();
  }

  toggleisDone(int index) {
    todoList[index].isDone = !todoList[index].isDone;
    notifyListeners();
  }
}
