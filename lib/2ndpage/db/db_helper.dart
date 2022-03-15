

import 'package:sqflite/sqflite.dart';

import '../models/task.dart';

class DBHelper {
  static Database? _db;
  static   int _version = 1;
  static  String _tableName = "tasks";

  static Future<void> initDb() async {
    if (_db != null) {
      return;
    }
    try {
      String _path = await getDatabasesPath() + 'tasks.db';
      _db =
          await openDatabase(_path, version: _version, onCreate: (db, version) {
        print("creating a new one ");
        return db.execute(
          "CREATE  TABLE  $_tableName("
          "id INTEGER PRIMARY KEY AUTOINCREMENT, "
          "title STRING, note TEXT,date STRING,"
          " startTime STRING, endTime STRING,"
          " remind INTEGER ,repeat STRING,"
          "color INTEGER , "
          "isCompleted INTEGER ",
        );
      });
    } catch (e) {
      print(e);
    }
  }

  static Future<int?> insert(Tas? task) async {
    print("insert func called");
    return await _db?.insert(_tableName, task!.Tojson())??1;
  }
   static Future<List<Map<String,dynamic>>?> query() async {
    print("query func called");
    return await _db?.query(_tableName);
  }
}

