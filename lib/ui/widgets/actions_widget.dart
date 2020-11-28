import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  final IconData icon;
  final int counter;
  final Function buttonCallback;
  ActionWidget({this.counter, this.buttonCallback, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonCallback,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            color: Colors.grey,
            iconSize: 30.0,
            icon: Icon(icon),
          ),
          Text(
            '$counter',
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 17.5,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
