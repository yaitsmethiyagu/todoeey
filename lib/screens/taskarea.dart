import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeey/model/taskdata.dart';
import 'package:todoeey/model/tasktile.dart';



class TaskArea extends StatefulWidget {
  const TaskArea({super.key});


  @override
  State<TaskArea> createState() => _TaskAreaState();
}


class _TaskAreaState extends State<TaskArea> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).taskslist.length,
      prototypeItem: Tasktile(taskname: Provider.of<TaskData>(context).taskslist.first.taskname),
      // prototypeItem: ListTile(
      //   title: Text(Provider.of<TaskData>(context).taskslist.first),
      //   trailing: Icon(Icons.check_box_outline_blank),
      //),

      // itemBuilder: (BuildContext context, int index) {
      //   return ListTile(
      //     title: Text(Provider.of<TaskData>(context).taskslist[index]),
      //     trailing: Icon(Icons.check_box_outline_blank), );
      // },
      itemBuilder: (BuildContext context, int index) {
        return Tasktile(taskname: Provider.of<TaskData>(context).taskslist[index].taskname);
      }
    );
  }
}