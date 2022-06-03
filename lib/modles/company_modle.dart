import 'package:al_hashmi_market/modles/location_modle.dart';
import 'package:al_hashmi_market/modles/product_modle.dart';
import 'package:flutter/widgets.dart';

late Company company;

class Company extends ChangeNotifier{
  late String _id;
  late String _nameOfCom;
  late String _description;
  late String _image;
  late List<Product> _products_list;
  late List<String> _categoriesList;
  late String _categotyOfCom;
  Company(this._id,this._nameOfCom,this._categotyOfCom,this._description,this._image);
  
  Map<String,dynamic> toMap(){
    Map<String,dynamic> map={
      'id':_id,
      'nameOfCom':_nameOfCom,
      "description":_description,
      'image':_image,
      'categories':_categoriesList,
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
    _categoriesList=snapshot.data['categories'];
    _categotyOfCom=snapshot.data['categoryOfCom'];
    _products_list=snapshot.data['productsList'];
  }

}