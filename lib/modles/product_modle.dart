class Product{
  late String _id;
  late String _id_company;
  late String _name;
  late String _description;
  late String _catogry;
  late String _image;
  late double _price;


  Product(this._id,this._id_company,this._name,this._price, this._image,this._description,this._catogry);
  Map<String,dynamic> toMap(){
    Map<String,dynamic> map ={
      'id':_id,
      'id_com':_id_company,
      'name':_name,
      'price':_price,
      'image':_image,
      'description':_description,
      'catogry':_catogry
    };
    return map;
  }
  Product.fromMap(Map<String,dynamic> map){
    _id= map['id'];
    _id_company=map['id_com'];
    _name=map['name'];
    _price=map['price']; 
    _image=map['image'];
    _description=map['description'];
    _catogry=map['catogry'];
  }
  get id =>_id;

}