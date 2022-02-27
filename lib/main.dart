// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:online_shop_app/app_module.dart';
// import 'package:online_shop_app/app_widget.dart';

// void main() {
//   runApp(
//     ModularApp(

//       module: AppModule(),
//       child: const AppWidget(),
//     ),
//   );
// }

// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:online_shop_app/features/presentation/pages/navpages/main_page.dart';
import 'package:online_shop_app/features/presentation/pages/welcome_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
