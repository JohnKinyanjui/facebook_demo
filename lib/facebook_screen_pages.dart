import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:json/constants.dart';
import 'package:json/facebook_button_group.dart';

import 'app_bar_icon.dart';

class FacebookScreenPages extends StatefulWidget {
  @override
  _FacebookScreenPagesState createState() => _FacebookScreenPagesState();
}

class _FacebookScreenPagesState extends State<FacebookScreenPages> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Pages",style: TextStyle(fontSize: 25,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
           Container(
             height: 40,
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: <Widget>[
                 FacebookButtonGroup(onPress: (){}, icon: FlevaIcons.plus_circle_outline, text: "Create"),
                 FacebookButtonGroup(onPress: (){}, icon: FlevaIcons.navigation_2_outline, text: "Discover"),
                 FacebookButtonGroup(onPress: (){}, icon: FontAwesomeIcons.userPlus, text: "Discover"),
                 FacebookButtonGroup(onPress: (){}, icon: FontAwesomeIcons.thumbsUp, text: "Liked Pades"),
               ],
             ),
           ),
          Padding(
            padding: const EdgeInsets.only(top :16.0,left: 8.0,right: 8.0),
            child: Container(height: 1,width: double.infinity,color: facebook_dgrey_color,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Your Pages",style: TextStyle(fontSize: 25,color: Colors.black, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right :8.0),
                  child: Container(width: 50,height: 50,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(color: facebook_grey_color,width: 1)
              ),
              child: Center(
                  child: Text("C",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold, color: facebook_grey_color),),
              ),
            ),
                ),
                Column(children: <Widget>[
                  Text("Cool Teens",style: TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.bold,)),
                  Container(height: 10,width: 10,decoration: BoxDecoration(),)
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
