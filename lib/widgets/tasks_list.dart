import 'package:flutter/material.dart';
import 'package:untitled11/widgets/tasks_tiles.dart';
import 'package:untitled11/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
              },
            longPressCallback: () {
                taskData.deleteTask(task);
            },
          );
        }, itemCount: taskData.taskCount,
        );
      }

    );
  }
}