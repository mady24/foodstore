import 'package:flutter/material.dart';
import 'package:samma_commande/enums/colors.dart';
import 'package:samma_commande/enums/dim.dart';
import 'package:samma_commande/responsive/orientationLayout.dart';
import 'package:samma_commande/responsive/screenTypeLayout.dart';

class CarteT extends StatefulWidget {
  

  _CarteT createState() => _CarteT();
}

class _CarteT extends State<CarteT>{
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child: Container(
      decoration: BoxDecoration(
    color: const Color(Couleurs.primary),
    image: const DecorationImage(
      image: AssetImage('assets/img/afric.png'),
      fit: BoxFit.cover,
      alignment: Alignment.center,
    ),
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
  width: SizeConfig.blockSizeHorizontal*70,
  child: Container(
        decoration: BoxDecoration(
        color: const Color(Couleurs.white),
        borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ]
        ),
        height: SizeConfig.blockSizeVertical*5,
        width: SizeConfig.blockSizeHorizontal*20,
        padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*2),
        margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*45, SizeConfig.blockSizeVertical*20, SizeConfig.blockSizeHorizontal*5, 0),
        child: Text('20-30 min'),
        ),
    
      ),
    ),
    landscape:
    Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeVertical*5),
      child: Container(
      decoration: BoxDecoration(
    color: const Color(Couleurs.primary),
    image: const DecorationImage(
      image: AssetImage('assets/img/afric.png'),
      fit: BoxFit.cover,
      alignment: Alignment.center,
    ),
    borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal*5),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ]
  ),
  height: SizeConfig.blockSizeHorizontal*25,
  width: SizeConfig.blockSizeVertical*70,
  child: Container(
        decoration: BoxDecoration(
        color: const Color(Couleurs.white),
        borderRadius: BorderRadius.circular(SizeConfig.blockSizeHorizontal*10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ]
        ),
        height: SizeConfig.blockSizeHorizontal*5,
        width: SizeConfig.blockSizeVertical*20,
        padding: EdgeInsets.all(SizeConfig.blockSizeVertical*2),
        margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeVertical*45, SizeConfig.blockSizeHorizontal*20, SizeConfig.blockSizeVertical*5, 0),
        child: Text('20-30 min'),
        ),
    
      ),
    ),
     ),
      tablet:Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child: Container(
      decoration: BoxDecoration(
    color: const Color(Couleurs.primary),
    image: const DecorationImage(
      image: AssetImage('assets/img/afric.png'),
      fit: BoxFit.cover,
      alignment: Alignment.center,
    ),
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
  width: SizeConfig.blockSizeHorizontal*70,
  child: Container(
        decoration: BoxDecoration(
        color: const Color(Couleurs.white),
        borderRadius: BorderRadius.circular(SizeConfig.blockSizeVertical*10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ]
        ),
        height: SizeConfig.blockSizeVertical*5,
        width: SizeConfig.blockSizeHorizontal*20,
        padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*2),
        margin: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*45, SizeConfig.blockSizeVertical*20, SizeConfig.blockSizeHorizontal*5, 0),
        child: Text('20-30 min'),
        ),
    
      ),
    ),
      );
    
  }


}