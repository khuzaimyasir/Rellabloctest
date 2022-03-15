import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:online_shop_app/2ndpage/constant/color_constant.dart';
import 'package:online_shop_app/2ndpage/models/task.dart';
import 'package:online_shop_app/2ndpage/task_controller.dart';
import 'package:online_shop_app/2ndpage/widgets/input_field.dart';
import 'package:online_shop_app/features/presentation/widgets/app_large_text.dart';
import 'package:online_shop_app/features/presentation/widgets/responsive_button.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TaskController _taskController = Get.put(TaskController());
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String _endTime = "9:30 pm";
  String _startTime = DateFormat("hh:mm a").format(DateTime.now()).toString();
  int _selectRemind = 5;
  List<int> remindList = [
    5,
    10,
    15,
    20,
  ];
  String _selectRepeat = "None";
  List<String> repeatList = [
    "None",
    "Daily",
    "Weekly",
    "Monthly",
  ];
  int _selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            AppLargeText(
              text: "Add Task ",
              size: 20,
            ),
            MyInputField(
              hint: 'Enter Title',
              title: 'Title',
              controller: _titleController,
            ),
            MyInputField(
              hint: 'Enter your Note',
              title: 'Note',
              controller: _noteController,
            ),
            MyInputField(
                hint: DateFormat.yMd().format(_selectedDate),
                title: 'Note',
                widget: IconButton(
                  color: Colors.purple,
                  icon: const Icon(
                    Icons.calendar_today_outlined,
                  ),
                  onPressed: () {
                    _getDateFromUser();
                  },
                )),
            Row(
              children: [
                Expanded(
                  child: MyInputField(
                    hint: _startTime,
                    title: "Start Date",
                    widget: IconButton(
                      color: Colors.purple,
                      icon: const Icon(Icons.access_alarm_outlined),
                      onPressed: () {
                        _getTimeFromUser(isStartTime: true);
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: MyInputField(
                    hint: _endTime,
                    title: "End Date",
                    widget: IconButton(
                      color: Colors.purple,
                      icon: const Icon(Icons.access_alarm_outlined),
                      onPressed: () {
                        _getTimeFromUser(isStartTime: false);
                      },
                    ),
                  ),
                ),
              ],
            ),
            MyInputField(
              title: "Remind",
              hint: "$_selectRemind minutes early",
              widget: DropdownButton(
                icon: const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.purple,
                ),
                iconSize: 32,
                elevation: 4,
                underline: Container(
                  height: 0,
                ),
                items: remindList.map<DropdownMenuItem<String>>(
                  (int value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(value.toString()),
                    );
                  },
                ).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectRemind = int.parse(value!);
                  });
                },
              ),
            ),
            MyInputField(
              title: "Repeat",
              hint: _selectRepeat,
              widget: DropdownButton(
                icon: const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.purple,
                ),
                iconSize: 32,
                elevation: 4,
                underline: Container(
                  height: 0,
                ),
                items: repeatList.map<DropdownMenuItem<String>>(
                  (String? value) {
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(
                        value.toString(),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    );
                  },
                ).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectRepeat = value!;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _colorPallete(),
                const SizedBox(
                  height: 100,
                ),
                GestureDetector(
                    onTap: (() {
                      _validateDate();
                    }),
                    child: ResponsiveButton(
                      label: "Create Task ",
                    ))
              ],
            )
          ]),
        ),
      ),
    );
  }

  addTaskToDb() async {
    int? value = await _taskController.addTask(
      task: Tas(
        note: _noteController.text,
        title: _titleController.text,
        date: DateFormat.yMd().format(_selectedDate),
        startTime: _startTime,
        endTime: _endTime,
        remind: _selectRemind,
        repeat: _selectRepeat,
        color: _selectedColor,
        isCompleted: 0,
      ),
    );
    print("my id is "+"" "$value");
  }

  _validateDate() {
    if (_titleController.text.isNotEmpty && _noteController.text.isNotEmpty) {
      addTaskToDb();
      //  add to db
      Get.back();
    } else if (_titleController.text.isEmpty || _noteController.text.isEmpty) {
      Get.snackbar("Required", "All fields are required",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.purple,
          icon: const Icon(
            Icons.warning_amber_rounded,
            color: Colors.purple,
          ));
    }
  }

  _colorPallete() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("COLOR"),
        const SizedBox(
          height: 5,
        ),
        Wrap(
          children: List<Widget>.generate(3, (int index) {
            return GestureDetector(
              onTap: (() {
                setState(() {
                  _selectedColor = index;
                });
              }),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: index == 0
                      ? Colors.purple
                      : index == 1
                          ? Colors.red
                          : Colors.yellow.shade600,
                  child: _selectedColor == index
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 16,
                        )
                      : Container(),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstant.colorRed277,
      leading: GestureDetector(
        onTap: () => Get.back(),
        child: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
  }

  _getDateFromUser() async {
    DateTime? _pickerDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2023),
    );
    if (_pickerDate != null) {
      setState(() {
        _selectedDate = _pickerDate;
        print(_selectedDate);
      });
    } else {
      print("something wrong");
    }
  }

  _getTimeFromUser({required bool isStartTime}) async {
    var pickedTime = await _showTimePicker();
    String _formatedTime = pickedTime.format(context);
    if (pickedTime == null) {
      print("time cancelled");
    } else if (isStartTime == true) {
      setState(() {
        _startTime = _formatedTime;
        print(_selectedDate);
      });
    } else if (isStartTime == false) {
      setState(() {
        _endTime = _formatedTime;
        print(_selectedDate);
      });
    }
  }

  _showTimePicker() {
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: const TimeOfDay(hour: 9, minute: 10));
  }
}
