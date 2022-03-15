import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:intl/intl.dart';
import 'package:online_shop_app/2ndpage/add_task_bar.dart';
import 'package:online_shop_app/2ndpage/constant/color_constant.dart';
import 'package:online_shop_app/2ndpage/task_controller.dart';
import 'package:online_shop_app/2ndpage/widgets/input_field.dart';
import 'package:online_shop_app/features/presentation/widgets/app_large_text.dart';
import 'package:online_shop_app/features/presentation/widgets/responsive_button.dart';

class HoomePage extends StatefulWidget {
  const HoomePage({Key? key}) : super(key: key);

  @override
  State<HoomePage> createState() => _HoomePageState();
}

class _HoomePageState extends State<HoomePage> {
  DateTime _selectedDate = DateTime.now();
  final _taskController = Get.put(TaskController());
  // var notifyHelper;

//   @override
//   void initState() {
// //  todo implement initstate
//     super.initState();
//     notifyHelper = NotifyHelper();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: ColorConstant.colorRed277,
      ),
      body: Column(
        children: [
          _addTaskBar(),
          _addDateBar(),
          _showTasks(),
       
        ],
      ),
    );
  }

  _showTasks() {
    return Expanded(child: Obx((() {
      return ListView.builder(
          itemCount: _taskController.taskList.length,
          itemBuilder: (_, context) {
            print(
              _taskController.taskList.length,
            );    
            return Container(
              width: 100,
              height: 50,
              color: Colors.black87,
              margin: const EdgeInsets.only(bottom: 10,),
            );
          });
    })));
  }

  _addTaskBar() {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat.yMMMMd().format(DateTime.now()),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AppLargeText(text: "Today"),
              ],
            ),
          ),
          GestureDetector(
            child: ResponsiveButton(
              label: "+ add task",
            ),
             onTap:  ()async{ await Get.to(()=>  AddTaskPage());
            _taskController.getTasks();
            }
          ),
        ],
      ),
    );
  }

  _addDateBar() {
    return Container(
      child: DatePicker(DateTime.now(),
          height: 100,
          width: 80,
          initialSelectedDate: DateTime.now(),
          selectionColor: ColorConstant.colorRed277,
          selectedTextColor: Colors.white,
          dateTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ), onDateChange: (date) {
        _selectedDate = date;
      }),
    );
  }
}
