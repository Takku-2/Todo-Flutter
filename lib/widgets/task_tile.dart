import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({this.text, this.isChecked, this.toggleCheckboxState});

  final String text;
  final bool isChecked;
  final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckboxState,
      ),
    );
  }
}
