import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:dashboard/pages/overview/widgets/overview_cards_small.dart';
import 'package:dashboard/utils/responsiveness.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() {
          return Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  weight: FontWeight.bold,
                  size: 24,
                ),
              ),
            ],
          );
        }),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomScreen(context))
                OverviewCardsMediumScreen()
              else
                OverviewCardsLargeScreen()
            else
              OverviewCardsSmallScreen()
          ],
        ))
      ],
    );
  }
}
