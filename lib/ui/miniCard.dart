import 'package:flutter/material.dart';
import 'package:samma_commande/enums/colors.dart';
import 'package:samma_commande/enums/dim.dart';
import 'package:samma_commande/responsive/orientationLayout.dart';
import 'package:samma_commande/responsive/screenTypeLayout.dart';

class MiniCarte extends StatefulWidget {
  final String orientation;
  MiniCarte({Key key, this.orientation}): super(key:key);
  

  _MiniCarte createState() => _MiniCarte();
}

class _MiniCarte extends State<MiniCarte>{
  
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child: Container(
      decoration: BoxDecoration(
    color: const Color(Couleurs.primary),
    borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*5),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ]
  ),
  height: SizeConfig.blockSizeVertical*15,
  width: SizeConfig.blockSizeVertical*15,
  child: Column(
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*5,SizeConfig.blockSizeHorizontal*2,SizeConfig.blockSizeHorizontal*2,0),
        child:Image.asset('assets/img/afric.png',height: SizeConfig.blockSizeHorizontal*10,),
      ),
      Padding(
      padding: EdgeInsets.fromLTRB(0,SizeConfig.blockSizeHorizontal*4,SizeConfig.blockSizeHorizontal*2,SizeConfig.blockSizeHorizontal*5),
      child:Text('Catégorie', style: new TextStyle(
        fontSize: 14.0,
        color: Colors.black54,
        ),),
      )
    ],
  ),
      ),
    ),
        landscape: Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child: Container(
      decoration: BoxDecoration(
    color: const Color(Couleurs.primary),
    borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*5),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ]
  ),
  height: SizeConfig.blockSizeVertical*20,
  width: SizeConfig.blockSizeVertical*20,
  child: Column(
    children: [
      Padding(
        padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
        child:Image.asset('assets/img/afric.png'),
      ),
      Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child:Text('Catégorie', style: new TextStyle(
        fontSize: 14.0,
        color: Colors.black54,
        ),),
      )
    ],
  ),
      ),
    ),
      ),
      tablet: Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child: Container(
      decoration: BoxDecoration(
    color: const Color(Couleurs.primary),
    borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*5),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ]
  ),
  height: SizeConfig.blockSizeVertical*25,
  width: SizeConfig.blockSizeVertical*25,
  child: Column(
    children: [
      Padding(
        padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
        child:Image.asset('assets/img/afric.png'),
      ),
      Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child:Text('Catégorie', style: new TextStyle(
        fontSize: 14.0,
        color: Colors.black54,
        ),),
      )
    ],
  ),
      ),
    ),
    );
    
    
  }


}