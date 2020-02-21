import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_viper/BaseClasses/BaseRouterClasses.dart';
import 'package:flutter_viper/MainTab/Presenter/MainTabPresenter.dart';

class MainTabRouter extends BaseRouter {
  @override
  void push(context, params, title) {
    super.push(context, params, title);
    Route route = MaterialPageRoute(builder: (context) {
      return MainTabPresenter().create(params);
    });
    Navigator.push(context, route);
  }
}
