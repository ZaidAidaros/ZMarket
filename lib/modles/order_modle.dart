import 'package:al_hashmi_market/modles/cart_modle.dart';
import 'package:flutter/material.dart';

class Orders{
  late List<CartShopping> _list_ordsers;
  Orders(this._list_ordsers);

  Map<String,dynamic> toMap(){
    return {'listOrders':_list_ordsers};
  }
  Orders.frpmMap(Map map){
    _list_ordsers=map['listOrders'];
  }
  Orders.fromSnapshot(AsyncSnapshot snapshot){
    _list_ordsers=snapshot.data['listOrders'];
  }

}