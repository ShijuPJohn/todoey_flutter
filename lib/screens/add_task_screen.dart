import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
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
                //TODO
              },
              autofocus: true,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              child: Text('Add Task'),
              onPressed: (){
                //TODO
              }
            ),
          ],
        ),
      ),
    );
  }
}
