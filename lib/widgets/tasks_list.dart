import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskDataObject, child) {
        return ListView.builder(
          itemCount: taskDataObject.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskDataObject.tasks[index].name,
              isChecked: taskDataObject.tasks[index].isDone,
              checkboxCallback: (checkboxState) {
//            setState(() {
//              taskDataObject.tasks[index].toggleDone();
//            });
              },
            );
          },
          padding: EdgeInsets.symmetric(horizontal: 20),
        );
      },
    );
  }
}
