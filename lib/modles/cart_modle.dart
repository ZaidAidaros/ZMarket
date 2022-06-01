import 'package:al_hashmi_market/modles/item_cart_modle.dart';
import 'package:al_hashmi_market/modles/product_modle.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';


enum StutsOfOrder{
  SENDED,
  WAIT,
  ACCEPTED,
  REJECTED,
  IN_PROCESS,
  IN_TESLEEM,
  OK,
  NO,
}

class CartShopping with ChangeNotifier{
  
  late List<Item> items;
  late double totalPriceOfCart=0.0;
  late StutsOfOrder stutsOfOrder;

  Map<String,dynamic> toMap(){
   return {
     'listItem':items,
     'totalPriceOfCart':totalPriceOfCart,
     'stutsOfOrder':stutsOfOrder
   }; 
  }
  
  CartShopping.fromFirebase(AsyncSnapshot snapshot){
    items=snapshot.data['listItem'];
    totalPriceOfCart=snapshot.data['totalPriceOfCart'];
    stutsOfOrder=snapshot.data['stutsOfOrder'];
  }
  addItem(Item item){
    if(items.contains(item)){
      items[items.indexOf(item)].incQuan();
      _totle();
      notifyListeners();
    }else{
      items.add(item);
      _totle();
      notifyListeners();
    }
    
  }
  decItem(Item item){
    if(items.contains(item)){
      items[items.indexOf(item)].decQuan();
      _totle();
      notifyListeners();
    }
    
  }
  removeItem(Item item){
    if(items.contains(item)){
      items.remove(item);
      _totle();
      notifyListeners();
      }
  }

  _totle(){
    for (var element in items) { 
      totalPriceOfCart+=element.totalPriceOfItem;
    }
  }
  get totleOfInvoice=>totalPriceOfCart;
}