import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './bloc/auth_bloc.dart';
import './pages/login.dart';
import 'package:provider/provider.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthBloc(),
          child: MaterialApp(showSemanticsDebugger: false,
        home: Scaffold(body: Login()),
      ),
    );
  }
}
