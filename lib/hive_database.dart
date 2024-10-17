import 'package:hive/hive.dart';

class Todoapp {
  List todolist = [];
  final myBox = Hive.box("tasks");

  void loaddata() {
    todolist = myBox.get("Todolist");
  }

  void updatedata() {
    myBox.put("Todolist", todolist);
  }
}
