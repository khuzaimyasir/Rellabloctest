import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:online_shop_app/2ndpage/home_layout.dart';

class NotifyHelper {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin(); //

  initializeNotification() async {
    //tz.initializeTimeZones();
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
            requestSoundPermission: false,
            requestBadgePermission: false,
            requestAlertPermission: false,
            onDidReceiveLocalNotification: onDidReceiveLocalNotification);

    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings("appicon");

    final InitializationSettings initializationSettings =
        InitializationSettings(
      iOS: initializationSettingsIOS,
      android: initializationSettingsAndroid,
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);
  }

  Future onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    Get.dialog(Text("Welcome to the app "));
    // showDialog(
    //   //context: context,
    //   builder: (BuildContext context) => CupertinoAlertDialog(
    //     title: Text(title),
    //     content: Text(body!),
    //     actions: [
    //       // CupertinoDialogAction(
    //       //   isDefaultAction: true,
    //       //   child: Text('Ok'),
    //       //   onPressed: () async {
    //       //     // Navigator.of(context, rootNavigator: true).pop();
    //       //     // await Navigator.push(
    //       //     //   context,
    //       //     //   MaterialPageRoute(
    //       //     //     builder: (context) => SecondScreen(payload),
    //       //     //   ),
    //       //     // );
    //       //   },
    //   //     // )
    //   //   ],
    //   // ), context: null,
    // );
  }

  Future selectNotification(String? payload) async {
    if (payload != null) {
      print('notification payload: $payload');
    } else {
      print("Notification Done");
    }
    Get.to(() => HomeLayout());
  }
  
}
