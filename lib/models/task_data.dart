import 'package:untitled11/models/task.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'dart:collection';


class TaskData extends ChangeNotifier {
List<Task> _tasks = [
Task(name: 'buy milk'),
Task(name: 'buy shit'),
Task(name: 'buy shits')
];

 UnmodifiableListView<Task> get tasks {
   return UnmodifiableListView(_tasks);
 }

int get taskCount {
  return _tasks.length;
}
void addTask(String newTaskTitle){
  final task = Task(name: newTaskTitle);
  _tasks.add(task);
  notifyListeners();
}

void updateTask(Task task) {
   task.toggleDone();
   notifyListeners();
}

void deleteTask(Task task) {
   _tasks.remove(task);
   notifyListeners();
}

}