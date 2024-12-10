import 'package:flutter/material.dart';
import 'package:provider/provider.dart' ;
import 'package:todoeey/model/taskdata.dart';

String userInput = '' ;


class FABAddTask extends StatelessWidget {
  const FABAddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Add task',
                          textAlign: TextAlign.center,
                        ),
                        TextField(
                          autocorrect: true,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            userInput = value;
                          },
                        ),
                        TextButton(
                            onPressed: () {
                              Provider.of<TaskData>(context, listen: false).addtask(userInput);
                              Navigator.pop(context);

                            },
                            child: const Text('Add'))
                      ],
                    ),
                  ),
                );
              });
        });
  }
}
