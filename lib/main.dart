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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:online_shop_app/2ndpage/db/db_helper.dart';
import 'package:online_shop_app/cubitz/app_cubit_logics.dart';
import 'package:online_shop_app/features/data/repositories/food_repository.dart';

import 'cubitz/app_cubits.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  // await GetStorage.init();
  //
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new GetMaterialApp(
      title: 'Flutr ndnsDemo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: FoodRepository(),
        ),
        child: const AppCubitLogics(),
      ),
    );
  }
}
