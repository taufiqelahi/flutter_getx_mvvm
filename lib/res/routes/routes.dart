import 'package:get/get.dart';
import 'package:getx_mvvm/res/routes/routes_name.dart';
import 'package:getx_mvvm/view/splash_screen.dart';
import 'package:getx_mvvm/view/watch_screen.dart';

class AppRoutes {
  appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => const SplashScreen(),
            transitionDuration: Duration(milliseconds: 250),
            transition: Transition.leftToRightWithFade),
    GetPage(
        name: RoutesName.watchScreen,
        page: () => const WatchScreen(),
        transitionDuration: Duration(milliseconds: 250),
        transition: Transition.leftToRightWithFade)
      ];
}
