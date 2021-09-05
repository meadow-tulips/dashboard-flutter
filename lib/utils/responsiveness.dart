import 'package:flutter/material.dart';

const int LARGE_SCREEN_SIZE = 1366;
const int MEDIUM_SCREEN_SIZE = 768;
const int SMALL_SCREEN_SIZE = 350;
const int CUSTOM_SCREEN_SIZE = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);


static bool isSmallScreen(BuildContext context) {
  return MediaQuery.of(context).size.width < MEDIUM_SCREEN_SIZE;
}

static bool isMediumScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= MEDIUM_SCREEN_SIZE &&  MediaQuery.of(context).size.width < LARGE_SCREEN_SIZE;
}

static bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= LARGE_SCREEN_SIZE;
}

static bool isCustomScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= MEDIUM_SCREEN_SIZE &&  MediaQuery.of(context).size.width <= CUSTOM_SCREEN_SIZE;
}



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      double _width = contraints.maxWidth;
      if(_width >= LARGE_SCREEN_SIZE) {
        return largeScreen;
      } else if(_width >= MEDIUM_SCREEN_SIZE && _width < LARGE_SCREEN_SIZE) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
