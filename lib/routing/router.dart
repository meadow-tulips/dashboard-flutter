import 'package:dashboard/pages/authentication/authentication.dart';
import 'package:dashboard/pages/clients/client.dart';
import 'package:dashboard/pages/drivers/driver.dart';
import 'package:dashboard/pages/overview/overview.dart';
import 'package:dashboard/routing/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverviewPage());
    case DriversPageRoute:
      return _getPageRoute(DriverPage());
    case ClientsPageRoute:
      return _getPageRoute(ClientPage());
    case AuthenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
