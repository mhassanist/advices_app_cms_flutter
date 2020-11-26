import 'package:flutter/material.dart';

class BottomBarIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final Function selectedIconCallback;

  BottomBarIcon({this.icon, this.isSelected, this.selectedIconCallback});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: isSelected ? Theme.of(context).accentColor : Colors.white,
        size: 30.0,
      ),
      onPressed: selectedIconCallback,
    );
  }
}
