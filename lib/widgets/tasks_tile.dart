import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
      onLongPress: onLongPressCallback,
    );
  }
}
