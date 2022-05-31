import 'package:al_hashmi_market/modles/location_modle.dart';
import 'package:al_hashmi_market/modles/product_modle.dart';
import 'package:flutter/widgets.dart';

class Company{
  late String _id;
  late String _nameOfCom;
  late String _description;
  late Location _location;
  late String _image;
  late List<Product> _products_list;
  late List<String> _categories;
  late String _categotyOfCom;
  Company(this._id,this._nameOfCom,this._categotyOfCom,this._description,this._location,this._image);
  
  Map<String,dynamic> toMap(){
    Map<String,dynamic> map={
      'id':_id,
      'nameOfCom':_nameOfCom,
      "description":_description,
      'image':_image,
      'categories':_categories,
      'location':_location,
      'categoryOfCom':_categotyOfCom,
      'productsList':_products_list,
    };
    return map;
  }
  Company.fromSnapShot(AsyncSnapshot snapshot){
    _id=snapshot.data['id'];
    _nameOfCom=snapshot.data['nameOfCom'];
    _description=snapshot.data['description'];
    _image=snapshot.data['image'];
    _categories=snapshot.data['categories'];
    _location=snapshot.data['location'];
    _categotyOfCom=snapshot.data['categoryOfCom'];
    _products_list=snapshot.data['productsList'];
  }

}