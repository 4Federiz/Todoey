import 'package:flutter/material.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      children: <Widget>[
        TaskTile(),
      ],
    );
  }
}