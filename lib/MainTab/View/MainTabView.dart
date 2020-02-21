import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_viper/BaseClasses/BaseViewClasses.dart';
import 'package:flutter_viper/MainTab/Entity/TabModel.dart';
import 'package:flutter_viper/MainTab/Presenter/MainTabPresenter.dart';

class MainTabView extends StatefulWidget implements BaseView {
  const MainTabView({
    Key key,
    this.appBar,
    this.views,
    this.presenter,
  });

  final MainTabPresenter presenter;

  // mainTab中的appBar使用
  final PreferredSizeWidget appBar;

  final List<TabModel> views;

  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: widget.views.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  List<Tab> createTabs() {
    List<Tab> tabs = new List<Tab>();
    widget.views.forEach((e) {
      var tab = Tab(
        text: e.tabName,
        icon: e.icon,
      );
      tabs.add(tab);
    });
    return tabs;
  }

  List<Widget> createBody() {
    List<Widget> bodies = new List<Widget>();
    widget.views.forEach((e) {
      bodies.add(e.body);
    });
    return bodies;
  }

  @override
  Widget build(BuildContext context) {
    print(widget.views.map((e) => e.body));
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: widget.appBar,
      body: Material(
        child: TabBarView(
          controller: tabController,
          children: createBody(),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Material(
          color: Colors.blue,
          child: SafeArea(
            child: TabBar(
              onTap: (index) {
                widget.presenter.tabChanged(index);
              },
              indicator: const BoxDecoration(),
              controller: tabController,
              tabs: createTabs(),
            ),
          ),
        ),
      ),
    );
  }
}
