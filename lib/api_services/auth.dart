import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

String erro = '';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

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
      await _auth.signInWithPhoneNumber(phone);
    } catch (e) {
      erro = e.toString();
    }
  }

  // Future virefyPhoneNum(String phoneNumber,,Function(PhoneAuthCredential) verificationCompleted) async {
  //   await _auth.verifyPhoneNumber(
  //       phoneNumber: phoneNumber,
  //       verificationCompleted: verificationCompleted,
  //       verificationFailed: verificationFailed,
  //       codeSent: (String ,int ){},
  //       codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
  // }
}
