import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  final authService _authLocal = authService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        title: Text('Sign In'),
      ),
      body: Container(
        child: RaisedButton(
          child: Text('Sign In Annonymously'),
          onPressed: () async {
            dynamic result = await _authLocal.signInAnyms();
            if (result == null) {
              print('error signing in');
            } else {
              print('signed in');
              print(result.userID);
            }
          },
        ),
      ),
    );
  }
}
