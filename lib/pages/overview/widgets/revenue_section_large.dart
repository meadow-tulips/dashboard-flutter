import 'package:dashboard/constants/style.dart';
import 'package:dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({ Key? key }) : super(key: key);

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
            offset: Offset(0,6),
            color: lightGrey.withOpacity(.1),
            blurRadius: 12
          ),

        ],
        border: Border.all(color:lightGrey, width: .5)),
        child: Row(children: [
          Expanded(child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: "Revenue Chart",
                  size: 20,
                  weight: FontWeight.bold,
                  color: lightGrey,
                ),
                Container(
                  child: SimpleBarChart.withSampleData(),
                  width: 600,
                  height: 200,
                )
              ],
            )
          ),

          Container(
            width: 1,
            height: 120,
            color: lightGrey,
          ),
          Expanded(child: 
          Column(
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
          ))
        ],)
      );
  }
}