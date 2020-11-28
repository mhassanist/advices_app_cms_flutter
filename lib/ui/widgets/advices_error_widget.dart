import 'package:flutter/material.dart';

class AdvicesErrorWidget extends StatelessWidget {
  final String errorText;
  AdvicesErrorWidget({this.errorText});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          errorText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
          ),
        ),
      ),
    );
  }
}
