/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape
import 'package:flutter/material.dart';
import 'package:samma_commande/class/ListItem.dart';
import 'package:samma_commande/enums/dim.dart';
import 'package:samma_commande/ui/appDrawer/appDrawer.dart';
import 'package:samma_commande/ui/card.dart';
import 'package:samma_commande/ui/cardtime.dart';
import 'package:samma_commande/ui/hCardList.dart';
import 'package:samma_commande/ui/infocart.dart';
import 'package:samma_commande/ui/miniCardList.dart';
import 'package:samma_commande/ui/select.dart';

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeMobilePortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: SizeConfig.blockSizeVertical*10,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: IconButton(
              icon: Icon(Icons.menu, size: 30),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
          ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical*5),
          Container(
            height: SizeConfig.blockSizeVertical*85,
          child:SingleChildScrollView(
          child: Column(
            children: <Widget>[
            MiniCarteList(),
            Carte(),
            HCardList(),
            HCardList(),
            HCardList(),
            ]
          )
          )
          )
        ],
      ),
    );
  }
}
List<ListItem> _dropdownItems = [
    ListItem(1, "First Value"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];
class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: <Widget>[
        AppDrawer(),
         SingleChildScrollView(
       child:  Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MiniCarteList(),
            Carte(),
            HCardList(),
            HCardList(),
            HCardList(),
            HCardList(),
          ]
        )
         )
      ],),
    );
  }
}