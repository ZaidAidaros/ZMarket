import 'package:al_hashmi_market/modles/location_modle.dart';
import 'package:flutter/widgets.dart';

class User{
  late final String _uid;
  late final String _first_name;
  late final String _sec_name;
  late final String _last_name;
  late final String _family_name;
  late final DateTime _dateOfBirthDay;
  late int _phone;
  late String _email;
  late List<Location> _location;
  User(this._uid,this._first_name,this._sec_name,this._last_name,this._family_name,this._email,this._phone,this._location,this._dateOfBirthDay);
  
  Map<String,dynamic> toMap(){
    Map<String,dynamic> map={
      'uid':this._uid,
      'first_name':_first_name,
      'sec_name':_sec_name,
      'last_name':_last_name,
      'family_name':_family_name,
      'email':this._email,
      'phone':this._phone,
      'location':this._location,
      'dateOfBirthDay':this._dateOfBirthDay
    };
    return map;
  }
  User.fromSnapShot(AsyncSnapshot snapshot){
    _uid=snapshot.data['uid'];
    _first_name=snapshot.data['first_name'];
    _sec_name=snapshot.data['sec_name'];
    _last_name=snapshot.data['last_name'];
    _family_name=snapshot.data['family_name'];
    _email=snapshot.data['email'];
    _phone=snapshot.data['phone'];
    _location=snapshot.data['location'];
    _dateOfBirthDay=snapshot.data['dateOfBirthDay'];
  }

}