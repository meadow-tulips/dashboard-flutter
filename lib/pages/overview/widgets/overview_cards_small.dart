import 'package:dashboard/widgets/info_card_small.dart';
import 'package:flutter/material.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: 400,
      child: Column(children: [
        InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            isActive: true,
            topColor: Colors.redAccent,
            onTap: () {}),
        SizedBox(
          height: _width / 64,
        ),
        InfoCardSmall(
            title: "Packages delivered",
            value: "17",
            topColor: Colors.redAccent,
            onTap: () {}),
        SizedBox(
          height: _width / 64,
        ),
        InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            topColor: Colors.redAccent,
            onTap: () {}),
        SizedBox(
          height: _width / 64,
        ),
        InfoCardSmall(
            title: "Scheduled delivery",
            value: "3",
            topColor: Colors.redAccent,
            onTap: () {})
      ]),
    );
  }
}
