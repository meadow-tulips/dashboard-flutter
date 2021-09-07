import 'package:dashboard/constants/style.dart';
import 'package:dashboard/utils/responsiveness.dart';
import 'package:dashboard/widgets/custom_text.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 14),
                child: Image.asset("assets/icons/logo.png", width: 28),
              )
            ],
          )
        : Container(
            alignment: Alignment.center, // This is needed
            child: IconButton(
                onPressed: () {
                  key.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu))),
    elevation: 0,
    title: Row(
      children: [
        Visibility(
            child: CustomText(
                text: 'Dash',
                color: lightGrey,
                size: 20,
                weight: FontWeight.bold)),
        Expanded(child: Container()),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            )),
        Stack(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: dark.withOpacity(.7),
                )),
            Positioned(
                top: 7,
                right: 7,
                child: Container(
                  alignment: Alignment.center,
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                      border: Border.all(color: light, width: 2),
                      color: active,
                      borderRadius: BorderRadius.circular(30)),
                ))
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: lightGrey,
        ),
        SizedBox(
          width: 24,
        ),
        CustomText(text: "Avan Sharma", color: lightGrey),
        SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Container(
            padding: EdgeInsets.all(2),
            margin: EdgeInsets.all(2),
            child: CircleAvatar(
              child: Icon(Icons.person_outline, color: dark),
              backgroundColor: light,
            ),
          ),
        )
      ],
    ),
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: dark),
  );
}
