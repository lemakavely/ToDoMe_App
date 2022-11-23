import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled11/models/task_data.dart';
import 'package:untitled11/widgets/tasks_list.dart';
import 'package:untitled11/widgets/add_task_screen.dart';

class WholePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(
                    (newTaskTitle) {
                  // setState(() {
                  //   tasks.add(Task(name: newTaskTitle));
                  // });
                  Navigator.pop(context);
                }),
          );
        },
        label: const Text('Add'),
        icon: const Icon(Icons.add),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.lightBlueAccent,
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Todome',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).taskCount} Tasks',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: TaskLists(),
                ),
              ),
            ],
          )
      ),
    );
  }
}
