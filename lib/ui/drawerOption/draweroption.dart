import 'package:flutter/material.dart';
import 'package:samma_commande/responsive/orientationLayout.dart';
import 'package:samma_commande/responsive/screenTypeLayout.dart';

import 'drawerOptionMobile.dart';
import 'drawerOptionTablet.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOption({
    Key key,
    this.title,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        landscape: DrawerOptionMobileLandscape(
          iconData: iconData,
        ),
        portrait: DrawerOptionMobilePortrait(
          title: title,
          iconData: iconData,
        ),
      ),
      tablet: OrientationLayout(
        portrait: DrawerOptionTabletPortrait(
          iconData: iconData,
          title: title,
        ),
        landscape: DrawerOptionMobilePortrait(
          iconData: iconData,
          title: title,
        ),
      ),
    );
  }
}