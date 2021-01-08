// import 'package:firebase_database/firebase_database.dart';
// import 'package:service/models/workshop.dart';

// class DatabaseService {

//   static Future<List<Workshop>> getNeeds() async {
//     Query snapshot = await FirebaseDatabase.instance
//       .reference()
//       .child("workshops")
//       .orderByKey();

//     print(snapshot); 

//     List<Workshop> workshop;

//     Map<dynamic, dynamic> values = snapshot;
//     values.forEach((key, values) {
//       needs.add(values);
//     });

//     return needs;
//   }
// }