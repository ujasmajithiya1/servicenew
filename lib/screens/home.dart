import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:service/bloc/auth_bloc.dart';
import 'package:service/custom%20widgets/custom_card.dart';
import 'package:service/pages/login.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:service/screens/workshop_home.dart';

class Home extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
  List<Map<dynamic, dynamic>> workshopList = [];
  StreamSubscription<User> loginStateSubscription;
  final dbRef = FirebaseDatabase.instance.reference().child("workshops");
  String rWorkshopName;

  @override
  void initState() {
    var authBloc = Provider.of<AuthBloc>(context, listen: false);
    loginStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser == null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    loginStateSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5e5ab8),
        title: Text(
          "Service Centers",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      backgroundColor: Color(0xFF5e5ab8),
      body: FutureBuilder(
        future: dbRef.once(),
        builder: (context, AsyncSnapshot<DataSnapshot> snapshot) {
          if (snapshot.hasData) {
            workshopList.clear();
            Map<dynamic, dynamic> values = snapshot.data.value;
            values.forEach((key, values) {
              workshopList.add(values);
            });
            return ListView.builder(
              itemCount: workshopList.length,
              itemBuilder: (BuildContext context, int index) {
                if (workshopList == null) {
                  return CircularProgressIndicator();
                } else {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WorkshopHome(
                                title: workshopList[index]["workshopname"],
                              )));
                    },
                    child: CustomCard(
                      title: workshopList[index]["workshopname"],
                      image: workshopList[index]["image"],
                    ),
                  );
                }
              },
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
  //final authBloc = Provider.of<AuthBloc>(context);

}

// Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(snapshot.data.displayName,style:TextStyle(fontSize: 35.0)),
//               SizedBox(height: 20.0,),
//               CircleAvatar(
//                 backgroundImage: NetworkImage(snapshot.data.photoURL.replaceFirst('s96','s400')),
//                 radius: 60.0,
//               ),
//               SizedBox(height: 100.0,),
//               SignInButton(
//                 Buttons.Google,
//                 text: 'Sign Out of Google',
//                 onPressed: () => authBloc.signOut()
//               )
//             ],
//           );

// return Scaffold(
//     body: Center(
//   child: StreamBuilder<User>(
//       stream: authBloc.currentUser,
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) return CircularProgressIndicator();
//         return Scaffold(
//           appBar: AppBar(
//             centerTitle: true,
//             backgroundColor: Color(0xFF5e5ab8),
//             title: Text(
//               "Service Centers",
//               style: TextStyle(color: Colors.white),
//             ),
//             elevation: 0,
//           ),
//           backgroundColor: Color(0xFF5e5ab8),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(snapshot.data.displayName,
//                     style: TextStyle(fontSize: 35.0)),
//                 SizedBox(
//                   height: 20.0,
//                 ),
//                 CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       snapshot.data.photoURL.replaceFirst('s96', 's400')),
//                   radius: 60.0,
//                 ),
//                 SizedBox(
//                   height: 100.0,
//                 ),
//                 SignInButton(Buttons.Google,
//                     text: 'Sign Out of Google',
//                     onPressed: () => authBloc.signOut())
//               ],
//             ),
//           ),
//         );
//       }),
// ));

// return FutureBuilder(
//   future: dbRef.once(),
//   builder: (context,AsyncSnapshot<DataSnapshot> snapshot){
//     if(snapshot.hasData){
//       workshopList.clear();
//       Map<dynamic, dynamic> values = snapshot.data.value;
//       values.forEach((key,values){
//         workshopList.add(values);
//       });
//     }
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: workshopList.length,
//       itemBuilder: (BuildContext context, index){
//         return Card(
//           child: Center(
//             child: Column(
//               children: [
//                 Text("name "+ workshopList[index].workshopName)
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

// );
