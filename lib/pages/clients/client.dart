import 'package:dashboard/constants/controllers.dart';
import 'package:dashboard/pages/clients/widgets/clients_table.dart';
import 'package:dashboard/utils/responsiveness.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

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
        // Expanded(
        //     child: ListView(
        //   children: [ClientsTable()],
        // ))
      ],
    );
  }
}
