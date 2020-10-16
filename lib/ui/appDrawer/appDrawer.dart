import 'package:flutter/material.dart';
import 'package:samma_commande/responsive/orientationLayout.dart';
import 'package:samma_commande/responsive/screenTypeLayout.dart';
import 'package:samma_commande/ui/appDrawer/appDrawerMobile.dart';
import 'package:samma_commande/ui/drawerOption/drawerOption.dart';

import 'appDrawerTablet.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: AppDrawerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      DrawerOption(
        title: 'Images',
        iconData: Icons.image,
      ),
      DrawerOption(
        title: 'Reports',
        iconData: Icons.photo_filter,
      ),
      DrawerOption(
        title: 'Incidents',
        iconData: Icons.message,
      ),
      DrawerOption(
        title: 'Settings',
        iconData: Icons.settings,
      ),
    ];
  }
}