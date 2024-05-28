import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/splash_screen.dart';

class AppRoutes{

  appRoutes()=>[
    GetPage(name: RoutesName.splashScreen, page: ()=>const SplashScreen())
  ];
}