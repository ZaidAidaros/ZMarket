class Location{
  late String _country;
  late String _city;
  late String _subCity;
  late String _area;
  late String _subArea;
  late String _sreet;
  late int _hoseNumber;
  Location(this._country,this._city,this._subCity,this._area,this._subArea,this._sreet,this._hoseNumber);

  Map<String,dynamic> toMap(){
    Map<String,dynamic> map={
      'country':_country,
      'city':_city,
      'subCity':_subCity,
      'area':_area,
      'subArea':_subArea,
      'sreet':_sreet,
      'hoseNumber':_hoseNumber
    };
    return map;
  }
  Location.fromMap(Map<String,dynamic> map){
    _country=map['country'];
    _city=map['city'];
    _subCity=map['subCity'];
    _area=map['area'];
    _subArea=map['subArea'];
    _sreet=map['sreet'];
    _hoseNumber=map['hoseNumber'];
  }
} 