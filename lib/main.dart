import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';

///TODO: Hitting the green arrow in Android will return null. Fix this.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreens(),
    );
  }
}