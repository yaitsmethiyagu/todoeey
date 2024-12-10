import 'package:flutter/foundation.dart';
import 'tasktile.dart';

class TaskData extends ChangeNotifier {

  List<Tasktile> taskslist = [Tasktile(taskname: 'Sample Task')];

  void addtask (newValue) {
    taskslist.add(Tasktile(taskname: newValue));
    notifyListeners();
  }

}