import 'package:flutter/cupertino.dart';
import 'package:flutter_viper/BaseClasses/BaseEntityClasses.dart';

class TabModel implements BaseModel {
  String tabName;
  Icon icon;
  Widget body;

  TabModel({
    this.tabName,
    this.icon,
    this.body,
  });
}
