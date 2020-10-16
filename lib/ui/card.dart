import 'package:flutter/material.dart';
import 'package:samma_commande/enums/colors.dart';
import 'package:samma_commande/enums/dim.dart';
import 'package:samma_commande/responsive/orientationLayout.dart';
import 'package:samma_commande/responsive/screenTypeLayout.dart';

class Carte extends StatefulWidget {
  final String orientation;
  Carte({Key key, this.orientation}): super(key:key);
  

  _Carte createState() => _Carte();
}

class _Carte extends State<Carte>{
  
  
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
    image: const DecorationImage(
      image: AssetImage('assets/img/afric.png'),
      fit: BoxFit.contain,
      alignment: Alignment.centerLeft
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
  height: SizeConfig.blockSizeVertical*30,
  width: SizeConfig.blockSizeHorizontal*90,
  child: Column(
    children: [
      Padding(
        padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
        child:RichText(
        text: new TextSpan(
        style: new TextStyle(
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.bold
        ),
        children: <TextSpan>[
          new TextSpan(text: 'Decouvrez le plat du jour de '),
          new TextSpan(text: 'CEASAR VILLE', style: new TextStyle(color: Colors.white)),
        ],
        ),
        )
      ),
      Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child:Text('Cuisine Ivoirienne avec une touche Camerounaise,\n Testez le plat du chef XXXX', style: new TextStyle(
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
    image: const DecorationImage(
      image: AssetImage('assets/img/afric.png'),
      fit: BoxFit.contain,
      alignment: Alignment.centerLeft
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
  height: SizeConfig.blockSizeVertical*60,
  width: SizeConfig.blockSizeHorizontal*75,
  child: Column(
    children: [
      Padding(
        padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
        child:RichText(
        text: new TextSpan(
        style: new TextStyle(
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.bold
        ),
        children: <TextSpan>[
          new TextSpan(text: 'Decouvrez le plat du jour de '),
          new TextSpan(text: 'CEASAR VILLE', style: new TextStyle(color: Colors.white)),
        ],
        ),
        )
      ),
      Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child:Text('Cuisine Ivoirienne avec une touche Camerounaise,\n Testez le plat du chef XXXX', style: new TextStyle(
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
    image: const DecorationImage(
      image: AssetImage('assets/img/afric.png'),
      fit: BoxFit.contain,
      alignment: Alignment.centerLeft
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
  height: SizeConfig.blockSizeVertical*30,
  width: SizeConfig.blockSizeHorizontal*90,
  child: Column(
    children: [
      Padding(
        padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
        child:RichText(
        text: new TextSpan(
        style: new TextStyle(
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.bold
        ),
        children: <TextSpan>[
          new TextSpan(text: 'Decouvrez le plat du jour de '),
          new TextSpan(text: 'CEASAR VILLE', style: new TextStyle(color: Colors.white)),
        ],
        ),
        )
      ),
      Padding(
      padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal*5),
      child:Text('Cuisine Ivoirienne avec une touche Camerounaise,\n Testez le plat du chef XXXX', style: new TextStyle(
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