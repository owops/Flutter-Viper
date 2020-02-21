import 'package:flutter/material.dart';
import 'package:flutter_viper/BaseClasses/BasePresenterClasses.dart';
import 'package:flutter_viper/MainTab/Entity/TabModel.dart';
import 'package:flutter_viper/MainTab/Interactor/MainTabInteractor.dart';
import 'package:flutter_viper/MainTab/View/MainTabView.dart';

class MainTabPresenter implements BasePresenter {
  @override
  Widget create(List<TabModel> params) {
    return MainTabView(
      views: MainTabInteractor().viewModel.tabs,
      presenter: this,
    );
  }

  void tabChanged(int index) {
    print('tab changed to: $index');
  }
}
