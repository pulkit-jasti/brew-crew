import 'package:brew_crew/screens/authenticate/signIn.dart';
import 'package:flutter/material.dart';

class authenticate extends StatefulWidget {
  @override
  _authenticateState createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: signIn(),
    );
  }
}
