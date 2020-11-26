import 'package:flutter/material.dart';
import 'ui/main_container.dart';

void main() {
  runApp(AdviceApp());
}

class AdviceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
          primaryColor: Color(0xFF00bcd4),
          accentColor: Color(0xFFfbd46d),
          bottomAppBarColor: Color(0xFF00bcd4),
          textTheme: TextTheme(
            bodyText2: TextStyle(fontFamily: 'Lato', color: Colors.black),
          )),
      home: MainContainer(),
    );
  }
}
