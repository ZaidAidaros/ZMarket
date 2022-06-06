import 'package:al_hashmi_market/modles/firestore_m.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireDB {
  final CollectionReference _referenceUsers =
      FirebaseFirestore.instance.collection(FireStoreCollect.Users.toString());
  final CollectionReference _referenceComp = FirebaseFirestore.instance
      .collection(FireStoreCollect.Companies.toString());

  Future upDate(FireStoreCollect fireStoreCollect,
      DocumentReference documentReference, Map<String, dynamic> map) async {
         FirebaseFirestore.instance.collection(fireStoreCollect.toString()).doc(documentReference.id).update(map);
      }
}
