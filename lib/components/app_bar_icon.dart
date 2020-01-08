import 'package:flutter/material.dart';
import 'package:json/main/constants.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  AppBarIcon({@required this.icon,@required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(5),
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: facebook_grey_color,
        ),
        child: Center(
          child: Icon(icon, color: facebook_icon_color,size: 25,),
        ),
      ),
    );
  }
}
