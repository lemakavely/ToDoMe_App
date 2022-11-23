import 'package:flutter/material.dart';
import 'package:untitled11/widgets/tasks_tiles.dart';
import 'package:untitled11/models/task.dart';

class TaskLists extends StatefulWidget {
  final List<Task> tasks;
  TaskLists(this.tasks);

  @override
  _TaskListsState createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskLists> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback: (checkboxState) {
             setState(() {
               widget.tasks[index].toggleDone();
             });
           }
          );
    }, itemCount: widget.tasks.length,
    );
  }
}