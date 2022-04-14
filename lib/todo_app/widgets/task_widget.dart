import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function removeFun;
  Task task;
  TaskWidget(this.task, this.fun, this.removeFun);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: ListTile(
        title: Text(task.title),
        leading: IconButton(
          icon: const Icon(
            Icons.delete,
            size: 40,
            color: Colors.white60,
          ),
          onPressed: () {
            removeFun(task);
          },
        ),
        trailing: Checkbox(
          onChanged: (value) {
            fun(task);
          },
          value: task.isCompleted,
        ),
      ),
    );
  }
}
/*value: task.isCompleted,
        onChanged: (v) {
          fun(task);
          removeFun(task);
        },*/