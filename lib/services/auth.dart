import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/models/myuser.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

//create user object
  MyUser? _userFromFirebaseUser(User? user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

//auth change user stream
  Stream<MyUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user));
  }

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //sign in with email and password

  //register

  //signout

}
