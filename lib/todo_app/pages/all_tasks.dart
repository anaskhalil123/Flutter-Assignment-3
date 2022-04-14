import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/models/task_model.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatefulWidget {
  Function fun;

  AllTasksScreen(this.fun);

  @override
  State<AllTasksScreen> createState() => _AllTasksScreenState();
}

class _AllTasksScreenState extends State<AllTasksScreen> {
  removeTask(Task task) {
    tasksList.remove(task);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
          itemCount: tasksList.length,
          itemBuilder: (context, index) {
            return TaskWidget(tasksList[index], widget.fun, removeTask);
          }),
    );
  }
}
