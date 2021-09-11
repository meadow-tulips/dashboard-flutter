import 'package:dashboard/constants/style.dart';
import 'package:dashboard/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = OverViewPageRouteName.obs;
  var hoveredItem = "".obs;

  void changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  void onHover(String itemName) {
    if (!isActive(itemName)) hoveredItem.value = itemName;
  }

  bool isActive(String itemName) {
    return activeItem.value == itemName;
  }

  bool isHovered(String itemName) {
    return hoveredItem.value == itemName;
  }

  Widget generateIconFor(String itemName) {
    switch (itemName) {
      case OverViewPageRouteName:
        return _customIcon(Icons.trending_up, itemName);
      case DriversPageRouteName:
        return _customIcon(Icons.drive_eta, itemName);
      case ClientsPageRouteName:
        return _customIcon(Icons.people_alt_outlined, itemName);
      case AuthenticationPageRouteName:
        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Icon(
        icon,
        color: dark,
        size: 22,
      );
    } else {
      return Icon(icon, color: isHovered(itemName) ? dark : lightGrey);
    }
  }
}
