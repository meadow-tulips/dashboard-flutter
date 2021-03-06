import 'package:dashboard/utils/local_navigator.dart';
import 'package:dashboard/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SideMenu(),
        ),
        Expanded(flex: 5, child: localNavigator())
      ],
    );
  }
}
