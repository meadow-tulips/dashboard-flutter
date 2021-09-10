import 'package:dashboard/constants/style.dart';
import 'package:dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12),
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: Column(
        children: [
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "Revenue Chart",
                  color: lightGrey,
                  weight: FontWeight.bold,
                  size: 20,
                ),
                Container(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                )
              ],
            ),
          ),
          Container(
            width: 120,
            height: 1,
            color: lightGrey,
          ),
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Row(
                children: [
                  RevenueInfo(title: "Today\'s revenue", amount: "23"),
                  RevenueInfo(title: "Last 7 days", amount: "1")
                ],
              ),
              SizedBox(
                height: 30,

              ),
              Row(
                children: [
                  RevenueInfo(title: "Last 30 day\'s revenue", amount: "1223"),
                  RevenueInfo(title: "Last 12 days", amount: "120")
                ],
              )
              ],
            ),
          )
        ],
      ),
    );
  }
}
