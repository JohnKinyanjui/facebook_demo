import 'package:flutter/material.dart';
import 'package:json/constants.dart';

class FacebookButtonGroup extends StatelessWidget{
  final Function onPress;
  final IconData icon;
  final String text;

  FacebookButtonGroup({@required this.onPress ,@required this.icon,@required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 30,
          decoration: BoxDecoration(
            color: facebook_grey_color,
            borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left :10.0,right: 10.0),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 5,),
                  Icon(icon,color: Colors.black,size: 15,),
                  SizedBox(width: 10,),
                  Text(text, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}