import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view_model/langunage_controller.dart';
import 'package:getx_mvvm/view_model/theme_controller.dart';
import 'package:getx_mvvm/view_model/watch_controller.dart';
import 'res/localization/language.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Add this import


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 // await Languages.loadTranslations();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final LocaleController localeController = Get.put(LocaleController());
    final ThemeController themeController=Get.put(ThemeController());
    final WatchController watchController=Get.put(WatchController());

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      supportedLocales: [
        Locale('en', 'US'),
        Locale('bn', 'BD'),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: RoutesName.splashScreen,
      getPages: AppRoutes().appRoutes(),
    );
  }
}
