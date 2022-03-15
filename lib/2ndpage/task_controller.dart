import 'package:get/get.dart';
import 'package:online_shop_app/2ndpage/db/db_helper.dart';

import 'models/task.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  var taskList = <Tas>[].obs;

  Future<int?> addTask({Tas? task}) async {
    return await DBHelper.insert(task);
  }

  void getTasks() async {
    List<Map<String, dynamic>>? tasks = await DBHelper.query();
    taskList.assignAll(tasks!.map((data) => Tas.fromJson(data)).toList());
  }
}
