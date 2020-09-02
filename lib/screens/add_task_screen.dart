import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  static String newTaskName;


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 400.0,
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add New Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskName = value;
              },
              autofocus: true,
            ),
            FlatButton(
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                child: Text('Add Task'),
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addTask(newTaskName);
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
