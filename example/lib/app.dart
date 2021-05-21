import 'package:example/ui/account/account_page.dart';
import 'package:example/ui/course/course_page.dart';
import 'package:example/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eden/eden.dart';

class App extends AbstractMvvmBaseNav {
  @override
  State<StatefulWidget> createState() => AppState();
}

class AppState extends AbstractMvvmBaseNavState<App>  {
  @override
  bool getHideToolbar() {
    return true;
  }

  @override
  bool getHideToolbarArrowBack() {
    return false;
  }

  @override
  String getToolbarTitle() {
    return "首页";
  }

  @override
  List<BottomNavigationBarItem> getBarItems() {
    return [
      BottomNavigationBarItem(
        label: Text("Home").data,
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: Text("Course").data,
        icon: Icon(Icons.import_contacts),
      ),
      BottomNavigationBarItem(
        label: Text("Me").data,
        icon: Icon(Icons.account_circle),
      ),
    ];
  }

  @override
  List<Widget> getPages() {
    return [Home(), CoursePage(), AccountPage()];
  }

  @override
  void onNavTap(int index) {
    super.onNavTap(index);

    ///
    setToolbarTitle(getBarItems()[index].label);
  }
}