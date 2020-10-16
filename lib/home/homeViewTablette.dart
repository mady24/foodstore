import 'package:flutter/material.dart';
import 'package:samma_commande/class/ListItem.dart';
import 'package:samma_commande/ui/appDrawer/appDrawer.dart';
import 'package:samma_commande/ui/card.dart';
import 'package:samma_commande/ui/cardtime.dart';
import 'package:samma_commande/ui/hCardList.dart';
import 'package:samma_commande/ui/infocart.dart';
import 'package:samma_commande/ui/select.dart';


List<ListItem> _dropdownItems = [
    ListItem(1, "First Value"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];
  
class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(
        child: Container(),
      ),
      AppDrawer(),
       Select( list: _dropdownItems,),
        Carte(),
        HCardList(),
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait
          ? Column(children: children)
          : Row(children: children.reversed.toList()),
    );
  }
}