// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import '../models/user.dart';

// class RegisterService {
//   final String uid;
//   RegisterService({this.uid});

//   final CollectionReference serviceCollection =
//       FirebaseFirestore.instance.collection('register');

//   Future uploadForm(UserData userData) async {
//     Map<String, dynamic> toMap() {
//       return {
//         'brand': userData.brand,
//         'model': userData.model,
//         'registration no.': userData.regNo,
//         'house no.': userData.houseNo,
//         'area': userData.area,
//         'landmark': userData.landmark,
//         'city': userData.city
//       };
//     }

//     serviceCollection.doc(uid).set({
          
//           'details' : FieldValue.arrayUnion([toMap()])
//         }).then((onValue) {
//           print('done');
//         }).catchError((e) {
//           print(e);
//         });
//   }

//   UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
//     return UserData(
//       uid: uid,
//       brand: snapshot.data()['brand'],
//       model: snapshot.data()['model'],
//       regNo: snapshot.data()['registration no.'],
//       houseNo: snapshot.data()['house no.'],
//       area: snapshot.data()['area'],
//       landmark: snapshot.data()['area'],
//       city: snapshot.data()['city']
//     );
//   }  
  
//   Stream<UserData> get userData{
//     return serviceCollection.doc(uid).snapshots()
//       .map(_userDataFromSnapshot);
//   }
  
  
// }
