import 'package:flutter/material.dart';
import 'package:samma_commande/enums/dim.dart';
import 'package:samma_commande/responsive/orientationLayout.dart';
import 'package:samma_commande/responsive/screenTypeLayout.dart';
import 'package:samma_commande/ui/cardtime.dart';


class InfoCart extends StatefulWidget {
  InfoCart({Key key}) : super(key: key);

  _InfoCart createState() => _InfoCart();
}

class _InfoCart extends State<InfoCart>{
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CarteT(),
            Padding(padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*5,0,0,0),
            child: Text('Nom Restau'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*5,0,0,0),
            child: Row(
              children: <Widget>[
                  Icon(Icons.star),
                  Text('5.0 Rated'),
                  Text('Sandwich, Salade, Burger'),
              ]
            )
            ),
          ]
        ),
        landscape: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CarteT(),
            Padding(padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeVertical*5,0,0,0),
            child: Text('Nom Restau'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeVertical*5,0,0,0),
            child: Row(
              children: <Widget>[
                  Icon(Icons.star),
                  Text('5.0 Rated'),
                  Text('Sandwich, Salade, Burger'),
              ]
            )
            ),
          ],
        ),
      ),
      tablet: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CarteT(),
            Padding(padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*5,0,0,0),
            child: Text('Nom Restau'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*5,0,0,0),
            child: Row(
              children: <Widget>[
                  Icon(Icons.star),
                  Text('5.0 Rated'),
                  Text('Sandwich, Salade, Burger'),
              ]
            )
            ),
          ]
        ),
    );
  }
}