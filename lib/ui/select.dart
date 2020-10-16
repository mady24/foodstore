import 'package:flutter/material.dart';
import 'package:samma_commande/class/ListItem.dart';

class Select extends StatefulWidget{
  final List<ListItem> list;
  
    const Select({Key key, @required this.list}) : super(key: key);
   
  
    _Select createState() => _Select();
  
  }
  
  

class _Select extends State<Select>{

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(widget.list);
    _selectedItem = _dropdownMenuItems[0].value;

  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = List();
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<ListItem>(
            value: _selectedItem,
            items: _dropdownMenuItems,
            onChanged: (value) {
              setState(() {
                _selectedItem = value;
              });
            });
  }

}