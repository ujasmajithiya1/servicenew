import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:service/pages/home.dart';
import 'package:service/services/register_service.dart';
import '../services/auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String brand = '';
  String model = '';
  String regNo = '';
  String houseNo = '';
  String area = '';
  String city = '';
  String landmark = '';
  bool loading = false;
  //final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Future<bool> checkExist(String docID) async {
    //   bool exists = false;
    //   try {
    //     await FirebaseFirestore.instance.doc('details').get().then((doc) {
    //       if (doc.exists) {
    //         Navigator.of(context).pushReplacement(MaterialPageRoute(
    //           builder: (context) => Home(),
    //         ));
    //       } else
    //         exists = false;
    //     });
    //     return exists;
    //   } catch (e) {
    //     return false;
    //   }
    // }

    //final String uid = _auth.getCurrentUser();
    return Scaffold(
      backgroundColor: Color(0xFF5e5ab8),
      appBar: AppBar(
        backgroundColor: Color(0xFF5e5ab8),
        title: Text(
          "Details",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Form(
              key: _formkey,
              child: Column(
                children: [
                  Text(
                    "Vehicle",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Theme(
                    data: ThemeData(primaryColor: Colors.white),
                    child: SizedBox(
                      width: 400.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.pink[200]),
                          decoration: InputDecoration(
                            filled: true,
                            //fillColor: Colors.pink[100],
                            labelText: "Vehicle Brand",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          validator: (val) => val.isEmpty
                              ? 'Enter a Brand of your vehicle!'
                              : null,
                          onChanged: (val) {
                            setState(() {
                              brand = val;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Theme(
                    data: ThemeData(primaryColor: Colors.white),
                    child: SizedBox(
                      width: 400.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.pink[200]),
                          decoration: InputDecoration(
                            filled: true,
                            //fillColor: Colors.pink[100],
                            labelText: "Model",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          validator: (val) => val.isEmpty
                              ? 'Enter a Model of your vehicle!'
                              : null,
                          onChanged: (val) {
                            setState(() {
                              model = val;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Theme(
                    data: ThemeData(primaryColor: Colors.white),
                    child: SizedBox(
                      width: 400.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.pink[200]),
                          decoration: InputDecoration(
                            filled: true,
                            //fillColor: Colors.pink[100],
                            labelText: "Registration No.",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          validator: (val) => val.isEmpty
                              ? 'Enter Registration No. of your vehicle!'
                              : null,
                          onChanged: (val) {
                            setState(() {
                              regNo = val;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "Address",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(height: 10.0),
                  Theme(
                    data: ThemeData(primaryColor: Colors.white),
                    child: SizedBox(
                      width: 400.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.pink[200]),
                          decoration: InputDecoration(
                            filled: true,
                            //fillColor: Colors.pink[100],
                            labelText: "House No.",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Please Enter House no!' : null,
                          onChanged: (val) {
                            setState(() {
                              houseNo = val;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Theme(
                    data: ThemeData(primaryColor: Colors.white),
                    child: SizedBox(
                      width: 400.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.pink[200]),
                          decoration: InputDecoration(
                            filled: true,
                            //fillColor: Colors.pink[100],
                            labelText: "Area",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Please Enter area!' : null,
                          onChanged: (val) {
                            setState(() {
                              area = val;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Theme(
                    data: ThemeData(primaryColor: Colors.white),
                    child: SizedBox(
                      width: 400.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.pink[200]),
                          decoration: InputDecoration(
                            filled: true,
                            //fillColor: Colors.pink[100],
                            labelText: "Landmark ",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Please Enter area!' : null,
                          onChanged: (val) {
                            setState(() {
                              landmark = val;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Theme(
                    data: ThemeData(primaryColor: Colors.white),
                    child: SizedBox(
                      width: 400.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextFormField(
                          cursorColor: Colors.white,
                          style: TextStyle(color: Colors.pink[200]),
                          decoration: InputDecoration(
                            filled: true,
                            //fillColor: Colors.pink[100],
                            labelText: "City",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          validator: (val) =>
                              val.isEmpty ? 'Please Enter city!' : null,
                          onChanged: (val) {
                            setState(() {
                              city = val;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    height: 50.0,
                    width: 350.0,
                    padding: EdgeInsets.only(left: 10.0),
                    child: RaisedButton(
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      textColor: Colors.grey[50],
                      onPressed: () async {
                        if (_formkey.currentState.validate()) {
                          setState(() {
                            loading = true;
                          });
                          FirebaseFirestore.instance
                              .runTransaction((Transaction transaction) async {
                            
                                await FirebaseFirestore.instance
                                    .collection('details')

                                    // RegisterService regService;
                                    // regService.uploadForm({
                                    //   "":
                                    // });
                                    .add({
                              "brand": "$brand",
                              "model": "$model",
                              "registration no.": "$regNo",
                              "house no.": "$houseNo",
                              "area": "$area",
                              "landmark": "$landmark",
                              "city": "$city"
                            });
                          });
                        }
                        _formkey.currentState.save();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                        //RegisterService(uid: uid).uploadForm()
                      },
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0)),
                      color: Colors.green[200],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
