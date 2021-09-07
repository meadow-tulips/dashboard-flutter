import 'package:dashboard/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsMediumScreen extends StatelessWidget {
  const OverviewCardsMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
                title: "Rides in progress",
                value: "7",
                topColor: Colors.orange,
                isActive: false,
                onTap: () {}),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
                title: "Packages delivered",
                value: "4",
                topColor: Colors.lightGreen,
                isActive: false,
                onTap: () {}),
          ],
        ),
        Row(
          children: [
            InfoCard(
                title: "Cancelled delivery",
                value: "3",
                topColor: Colors.redAccent,
                isActive: false,
                onTap: () {}),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
                title: "Scheduled deliveries",
                value: "3",
                topColor: Colors.orange,
                isActive: false,
                onTap: () {}),
          ],
        )
      ],
    );
  }
}
