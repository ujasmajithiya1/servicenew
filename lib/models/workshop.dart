import 'package:firebase_database/firebase_database.dart';
class Workshop{
  final String workshopName;
  final String contactNo;
  final String gst;
  final String imageurl;
  final String ownerName;
  final String address;

Workshop({this.workshopName, this.contactNo, this.gst, this.imageurl, this.ownerName, this.address});


  Workshop.fromSnapshot(DataSnapshot snapshot) :
    workshopName = snapshot.value["workshopname"],
    contactNo = snapshot.value["contactNo"],
    gst = snapshot.value["gst IN"],
    imageurl = snapshot.value["image"],
    ownerName = snapshot.value["ownername"],
    address = snapshot.value["address"];

    toJson() {
      return{
        "workshopname": workshopName,
        "contactNo": contactNo,
        "gst IN": gst,
        "image": imageurl,
        "ownername": ownerName,
        "address": address
      };
    }
 }





 //UserData.fromSnapshot(DataSnapshot snapshot): brand = snapshot.value["brand"]
  //       UserData.fromSnapshot(DataSnapshot snapshot) :
  //   id = snapshot.key,
  //   imageUrl = snapshot.value["imageUrl"],
  //   caption = snapshot.value["caption"],
  //   title = snapshot.value["postTitle"];

  // toJson() {
  //   return {
  //     "imageUrl": imageUrl,
  //     "caption": caption,
  //     "title": title,
  //   };
  // }