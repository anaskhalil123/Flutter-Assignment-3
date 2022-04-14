import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/models/task_model.dart';
import 'package:state_managment/todo_app/widgets/task_widget.dart';

class InCompleteTasksScreen extends StatefulWidget {
  Function fun;
  InCompleteTasksScreen(this.fun);

  @override
  State<InCompleteTasksScreen> createState() => _InCompleteTasksScreenState();
}

class _InCompleteTasksScreenState extends State<InCompleteTasksScreen> {
  removeTask(Task task) {
    tasksList.remove(task);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
          itemCount: tasksList.where((element) => !element.isCompleted).length,
          itemBuilder: (context, index) {
            return TaskWidget(
                tasksList
                    .where((element) => !element.isCompleted)
                    .toList()[index],
                widget.fun,
                removeTask);
          }),
    );
  }
}
