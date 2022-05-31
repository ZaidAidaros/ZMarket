import 'package:al_hashmi_market/modles/product_modle.dart';
import 'package:flutter/widgets.dart';

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


class Item{
  late Product _product;
  late StutsOfOrder stutsOfOrder;
  late int _quantity;
  late double _total_price;
  Item(this._product,this._quantity,this._total_price);


  incQuan(){
    _quantity++;
  }
  decQuan(){
    _quantity--;
  }

  get totalPriceOfItem=>_quantity*_product.toMap()['price'];
  Map<String,dynamic> toMap(){
    return{
      'item':_product,
      'quantity':_quantity,
      'total_price_forItem':_total_price,
      'stuts':stutsOfOrder
    };
  }
  Item.fromMap(Map map){
    _product=map['item'];
    _quantity=map['quantity'];
    _total_price=map['total_price_forItem'];
  }
  Item.fromSnapshot(AsyncSnapshot snapShot) {
    _product=snapShot.data['item'];
    _quantity=snapShot.data['quantity'];
    _total_price=snapShot.data['total_price_forItem'];
    stutsOfOrder=snapShot.data['stuts'];
  }
}