import 'package:flutter/cupertino.dart';
import 'package:flutter_viper/BaseClasses/BaseRouterClasses.dart';
import 'package:flutter_viper/MainTab/Router/MainTabRouter.dart';

enum RouterKey {
  MainTab,
}

class Router {
  static Map<RouterKey, BaseRouter> routeMap = {
    RouterKey.MainTab: MainTabRouter(),
  };

  static void push(RouterKey destination, context, {params, title}) {
    if (routeMap.containsKey(destination)) {
      print(destination);
      var router = routeMap[destination];
      print(router);
      router.push(context, params, title);
    }
  }

  static void pop(context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }
}
