
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

 
  //streem
  
  // signIn Anon
  Future signInAnon()async{
    try{
      await _auth.signInAnonymously().then((value) => value.user);
    }catch(e){
      return e;
    }
  }
  //creat account
  Future signUpWithEP(String email,String password)async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password).then((value) => value.user);
    }catch(e){
      return e;
    }
  }
  // signIn
  Future signInWithEP(String email,String password)async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password).then((value) => value.user);
    }catch(e){
      return e;
    }
  }
  
}