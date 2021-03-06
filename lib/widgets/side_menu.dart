import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/constants/style.dart';
import 'package:dashboard/pages/authentication/authentication.dart';
import 'package:dashboard/routing/routes.dart';
import 'package:dashboard/utils/responsiveness.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:dashboard/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                        child: CustomText(
                      text: "Dash",
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(
                      width: _width / 48,
                    )
                  ],
                ),
              ],
            ),
          Divider(color: lightGrey.withOpacity(.1)),
          Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems
                  .map((itemName) => SideMenuItem(
                      itemName: itemName.name,
                      onTap: () {
                        if (itemName.route == AuthenticationPageRoute) {
                          menuController
                              .changeActiveItemTo(OverViewPageRouteName);
                          Get.offAllNamed(AuthenticationPageRoute);
                        }
                        if (!menuController.isActive(itemName.name)) {
                          menuController.changeActiveItemTo(itemName.name);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                          }
                          navigationController.navigateTo(itemName.route);
                        }
                      }))
                  .toList())
        ],
      ),
    );
  }
}
