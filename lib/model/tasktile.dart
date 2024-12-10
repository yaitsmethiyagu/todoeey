import 'package:flutter/material.dart';

class Tasktile extends StatefulWidget {
  String taskname;
  bool isDone = true;

  Tasktile({super.key, required this.taskname});

  void taskisdone () {
    isDone = !isDone ;
  }

  @override
  State<Tasktile> createState() => _TasktileState();
}

class _TasktileState extends State<Tasktile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.taskname,
      style: widget.isDone? TextStyle() : TextStyle(decoration: TextDecoration.lineThrough),),
      trailing: widget.isDone? Icon(Icons.check_box_outline_blank) : Icon(Icons.check_box_outlined),
      onTap: () {
        widget.taskisdone();
        setState(() {

        });
      },
    );
  }
}
