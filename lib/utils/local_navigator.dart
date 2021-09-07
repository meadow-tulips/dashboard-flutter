import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/routing/router.dart';
import 'package:dashboard/routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator () {
  return Navigator(key: navigationController.navigatorKey,
    initialRoute: OverViewPageRoute,
    onGenerateRoute: generateRoute,
  );
}