import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy beer', isDone: true),
    Task(name: 'Buy milk')
  ];

  int get taskCount => _tasks.length;

  void addTask(String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void removeTask(int i) {
    _tasks.removeAt(i);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
