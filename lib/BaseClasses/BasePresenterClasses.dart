import 'package:flutter/material.dart';
import 'package:flutter_viper/BaseClasses/BaseEntityClasses.dart';

abstract class BasePresenter<T> {
  // Presenter构造函数，用于Router中使用
  Widget create(covariant T params) {
    return null;
  }
}
