import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:provider/provider.dart';
import 'package:todoeey/model/taskdata.dart';
import 'package:todoeey/screens/taskarea.dart';
import 'package:todoeey/screens/fabaddtask.dart';

void main() {
  runApp(const TodoeeyApp());
}

class TodoeeyApp extends StatelessWidget {
  const TodoeeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (BuildContext context) => TaskData() ,
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}


String userInput = '';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      size: 50,
                      Icons.view_list_sharp,
                      color: kbackgroundColor,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Todoeey',
                      style: ktitleStyle ),
                  Text(
                    '${Provider.of<TaskData>(context).taskslist.length} Tasks',
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: kbackgroundColor,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20, left: 4),
                    child: TaskArea(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FABAddTask(),
    );
  }


}



