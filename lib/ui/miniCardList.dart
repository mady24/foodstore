import 'package:flutter/material.dart';
import 'package:samma_commande/enums/dim.dart';
import 'package:samma_commande/responsive/orientationLayout.dart';
import 'package:samma_commande/responsive/screenTypeLayout.dart';
import 'package:samma_commande/ui/miniCard.dart';


class MiniCarteList extends StatefulWidget {
  MiniCarteList({Key key}) : super(key: key);

  _MiniCarteList createState() => _MiniCarteList();

}

class _MiniCarteList extends State<MiniCarteList>{

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: Container(
          width: SizeConfig.blockSizeHorizontal*100,
          height: SizeConfig.blockSizeVertical*25,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                
                MiniCarte(),
                MiniCarte(),
                MiniCarte(),
                MiniCarte(),

              ]
            ),
            )
        ),
        landscape: Container(
          width: SizeConfig.blockSizeHorizontal*100,
          height: SizeConfig.blockSizeVertical*15,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                
                MiniCarte(),
                MiniCarte(),
                MiniCarte(),
                MiniCarte(),

              ]
            ),
            )
        ),
      ),
      tablet: Container(
          width: SizeConfig.blockSizeHorizontal*100,
          height: SizeConfig.blockSizeVertical*35,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                
                MiniCarte(),
                MiniCarte(),
                MiniCarte(),
                MiniCarte(),

              ]
            ),
            )
        ),
    );
  }
}