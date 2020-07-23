import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class authService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(userID: user.uid) : null;
  }

  //sign-in anyms
  Future signInAnyms() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign-in with email and passcode

  //register with email and passcode

  //sign-out
}
