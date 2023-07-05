import 'package:my_app/consts/consts.dart';
import 'package:my_app/consts/firebase_consts.dart';

class FirestoreServices{
  static getUser(uid){
    return firestore.collection(userCollection).where('id',isEqualTo: uid).snapshots();
  }
}