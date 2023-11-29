import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

  // référencer la box 
  final _myBox = Hive.box('mybox');
  
  // 1ère fois si l'app est lancée
  void InitData() {
    toDoList = [
      ["Créer un tuto", false],
      ["Faire un exo", false],
    ];
  } 

  // charger les données 
  void loadData () {
    toDoList = _myBox.get('ToDoList');
  } 

  // mettre à jour les données
  void updateData() {
    _myBox.put('ToDoList', toDoList);
  }
}