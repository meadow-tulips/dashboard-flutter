import 'package:dashboard/constants/style.dart';
import 'package:dashboard/controllers/menu_controller.dart';
import 'package:dashboard/controllers/navigation_controller.dart';
import 'package:dashboard/layout.dart';
import 'package:dashboard/pages/404/error_page.dart';
import 'package:dashboard/pages/authentication/authentication.dart';
import 'package:dashboard/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: AuthenticationPageRoute,
        unknownRoute: GetPage(
            name: "/not-found",
            page: () => PageNotFound(),
            transition: Transition.fadeIn),
        getPages: [
          GetPage(name: RootRoute, page: () => SiteLayout()),
          GetPage(
              name: AuthenticationPageRoute,
              page: () => AuthenticationPage()),
        ],
        debugShowCheckedModeBanner: false,
        title: "Dashboard",
        theme: ThemeData(
            scaffoldBackgroundColor: light,
            textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.black),
            pageTransitionsTheme: PageTransitionsTheme(builders: {
              TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
              TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            }),
            primaryColor: Colors.blue),
        home: AuthenticationPage());
  }
}
