import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:service/models/user.dart';
import 'package:service/pages/register.dart';
import 'package:service/services/auth.dart';
import '../bloc/auth_bloc.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  StreamSubscription<User> loginStateSubscription;

  @override
  void initState() {
    var authBloc = Provider.of<AuthBloc>(context, listen: false);
    loginStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser != null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Register(),
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
    final authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
      backgroundColor: Color(0xFF5e5ab8),
      body: Column(
        children: [
          Center(
            heightFactor: 2,
            child: Column(
              children: [
                Container(
                    height: 210.0,
                    width: 210.0,
                    child: Lottie.asset(
                        'animations/29844-problems-solutions.json')),
                Text(
                  "Have Some ",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "problem with",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "your car?",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                SignInButton(Buttons.Google, onPressed: () {
                  authBloc.loginGoogle();
                  
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
