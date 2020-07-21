import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen(this.addNewItem);

  final Function addNewItem;

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 5),
              child: TextField(
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (newTitle) {
                  newTaskTitle = newTitle;
                },
              ),
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 50,
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                addNewItem(newTaskTitle);
                Navigator.pop(context);
              },
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
