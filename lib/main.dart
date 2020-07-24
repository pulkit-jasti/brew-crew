import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:brew_crew/screens/wrapper.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: authService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: wrapper(),
      ),
    );
  }
}
