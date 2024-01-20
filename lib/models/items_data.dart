import 'package:flutter/material.dart';

import 'item.dart';

class ItemData with ChangeNotifier{
  final List<Item> items =[
    Item('peynir al',false),
    Item('çöpü at',false),
    Item('faturayı öde', false),



  ];

  void toggleStatus(int index){
    items[index].toggleStatus();
    notifyListeners();
  }

  void addItem(String title){

    items.add(Item(title, false));
    notifyListeners();
  }
  void deleteItem(int index){
    items.removeAt(index);
    
  }

}