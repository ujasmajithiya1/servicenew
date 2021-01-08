import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
//import 'package:service/models/user.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;
  GoogleSignIn _googleSignIn = GoogleSignIn();
  Future<UserCredential> signInWithCredential(AuthCredential credential) => 
  _auth.signInWithCredential(credential);
  Future<void> signOut() async{
    await _auth.signOut();
    await _googleSignIn.signOut();
  }
  Stream<User> get currentUser => _auth.authStateChanges();

  getCurrentUser() async{
    User currentUser = FirebaseAuth.instance.currentUser;
    String uid = currentUser.uid;
    return uid;
  }
  
}