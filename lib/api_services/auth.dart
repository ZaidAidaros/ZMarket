import 'package:al_hashmi_market/modles/user_modle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

String erro = '';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? codeViref;

  //streem

  // signIn Anon
  Future signInAnon() async {
    try {
      return await _auth.signInAnonymously().then((value) => value.user);
    } catch (e) {
      erro = e.toString();
    }
  }

  //creat account
  Future signUpWithEP(String email, String password) async {
    try {
      return await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => value.user);
    } catch (e) {
      erro = e.toString();
    }
  }

  // signIn
  Future signInWithEP(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      erro = e.toString();
    }
  }

  Future signInWithPhone(String phone) async {
    try {
      ConfirmationResult confirmationResult = await _auth.signInWithPhoneNumber(phone);
      return confirmationResult;
    } catch (e) {
      erro = e.toString();
      return null;
    }
  }

  Future virefyPhoneNum(String phoneNumber,Function onComplate) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential _phoneAuthCredential)async{
          userCredential = await _auth.signInWithCredential(_phoneAuthCredential);
          onComplate;
        },
        verificationFailed: (FirebaseAuthException e){
          erro=e.message.toString();
        },
        codeSent: (String code,int? i ){
          codeViref=code;
        },
        codeAutoRetrievalTimeout: (String c){
          codeViref=c;
        },
        timeout:const Duration(seconds: 60)
        );
  }
}
