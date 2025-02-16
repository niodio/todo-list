import 'package:flutter/material.dart';
import 'package:todo/models/task_model.dart';

class SaveTask extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Learn Flutter', isCompleted: false),
    Task(title: 'Learn Dart', isCompleted: false),
    Task(title: 'Learn with yourself', isCompleted: false),
  ];

  List<Task> get tasks => _tasks;

  void addTask(Task task){
    tasks.add(task);
    notifyListeners();
  }

  void checkTask(int index){
    tasks[index].isDone();
    notifyListeners();
  }

  void deleteTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}
