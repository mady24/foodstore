import 'package:flutter/material.dart';
import 'package:samma_commande/enums/dim.dart';
import 'package:samma_commande/responsive/orientationLayout.dart';
import 'package:samma_commande/responsive/screenTypeLayout.dart';
import 'package:samma_commande/ui/infocart.dart';


class HCardList extends StatefulWidget {
  HCardList({Key key}) : super(key: key);

  _HCardList createState() => _HCardList();

}

class _HCardList extends State<HCardList>{
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('A la Une'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget> [
                    InfoCart(),
                    InfoCart(),
                    InfoCart(),
                ]
              ),
            )
          ],
        ),
        landscape: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('A la Une'),
            Container(width: SizeConfig.blockSizeHorizontal*85,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget> [
                    InfoCart(),
                    InfoCart(),
                    InfoCart(),
                ]
              ),
            )
        )
          ],
        ),
      ),
      tablet: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('A la Une'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget> [
                    InfoCart(),
                    InfoCart(),
                    InfoCart(),
                ]
              ),
            )
          ],
        ),
    );
  }
}