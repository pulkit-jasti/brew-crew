import 'package:firebase_auth/firebase_auth.dart';

class authService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign-in anyms
  Future signInAnyms() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign-in with email and passcode

  //register with email and passcode

  //sign-out
}
