import 'package:commons/screens/home/explore/explore_page.dart';
import 'package:commons/screens/home/home_page.dart';
import 'package:commons/screens/login/login_page.dart';
import 'package:commons/utils/misc_util.dart';
import 'package:flutter/material.dart';

import 'app_config.dart';

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new HomePage(),
  '/': (BuildContext context) => new HomePage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);

    return new MaterialApp(
      title: config.appName,
      theme: new ThemeData(primaryColor: hexToColor("#0c609c"),
          primaryColorDark: hexToColor("#00376d")),
      routes: routes,
    );
  }
}