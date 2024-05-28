import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/splash_screen.dart';

void main() {
  print(InternetException('hello'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     initialRoute: RoutesName.splashScreen,
      getPages: AppRoutes().appRoutes(),
    );
  }
}

