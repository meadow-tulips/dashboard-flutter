import 'package:dashboard/widgets/info_card.dart';
import 'package:flutter/material.dart';

class OverviewCardsLargeScreen extends StatelessWidget {
  const OverviewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
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
        SizedBox(
          width: _width / 64,
        ),
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
        SizedBox(
          width: _width / 64,
        ),
      ],
    );
  }
}
