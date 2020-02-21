import 'package:flutter/material.dart';
import 'package:flutter_viper/BaseClasses/BaseInteractorClasses.dart';
import 'package:flutter_viper/MainTab/Entity/TabModel.dart';

class MainTabViewModel {
  List<TabModel> tabs;

  MainTabViewModel({
    this.tabs,
  });
}

class MainTabInteractor implements BaseInteractor {

  MainTabViewModel viewModel = MainTabViewModel(
    tabs: [
      TabModel(
        tabName: '测试tab1',
        body: Container(
          child: Text('测试页面1'),
        ),
      ),
      TabModel(
        tabName: '测试tab2',
        body: Container(
          child: Text('测试页面2'),
        ),
      ),
      TabModel(
        tabName: '测试tab3',
        body: Container(
          child: Text('测试页面3'),
        ),
      )
    ],
  );
}
