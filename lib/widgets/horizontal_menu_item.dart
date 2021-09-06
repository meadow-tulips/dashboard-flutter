import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/constants/style.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const HorizontalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () => onTap,
      onHover: (val) {
        val
            ? menuController.onHover(itemName)
            : menuController.onHover(" not hovering");
      },
      child: Obx(() {
        return Container(
          color: menuController.isHovered(itemName)
              ? lightGrey.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovered(itemName) ||
                    menuController.isActive(itemName),
                child: Container(width: 3, height: 72, color: dark),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
              ),
              SizedBox(
                width: _width / 80,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: menuController.generateIconFor(itemName),
              ),
              !menuController.isActive(itemName)
                  ? Flexible(
                      child: CustomText(
                      color:
                          menuController.isHovered(itemName) ? dark : lightGrey,
                      text: itemName,
                    ))
                  : Flexible(
                      child: CustomText(
                        text: itemName,
                        color: dark,
                        size: 18,
                        weight: FontWeight.bold,
                      ),
                    )
            ],
          ),
        );
      }),
    );
  }
}
