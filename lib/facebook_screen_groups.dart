
import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:json/constants.dart';
import 'package:json/facebook_button_group.dart';
import 'package:json/facebook_card_group.dart';
import 'package:json/facebook_card_notification.dart';
import 'package:json/model_group.dart';
import 'dart:convert';
import 'app_bar_icon.dart';
import 'facebook_card_icon_text.dart';

class FacebookScreenGroups extends StatefulWidget {
  @override
  _FacebookScreenGroupsState createState() => _FacebookScreenGroupsState();
}

class _FacebookScreenGroupsState extends State<FacebookScreenGroups> {


  List<ModelGroup> groups = [
    ModelGroup(
      image_path: 'assets/images/china.jpg',
      title: "Farming Group"
    ),
    ModelGroup(
        image_path: 'assets/images/page.jpg',
        title: "Cool Page"
    ),
    ModelGroup(
        image_path: 'assets/images/pexel.jpeg',
        title: "Pexel Page"
    ),
    ModelGroup(
        image_path: 'assets/images/sunset.jpg',
        title: "Nature Page"
    ),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  double pd = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: facebook_dgrey_color,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(height: 1, width: double.infinity, color: facebook_dgrey_color,),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(child: Text("Groups", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.black),)),
                      AppBarIcon(icon: FontAwesomeIcons.search, onPress: (){
                      }),
                    ],
                  ),
                  Container(
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FacebookButtonGroup(onPress: (){}, icon: FontAwesomeIcons.users, text: "Your Groups"),
                        FacebookButtonGroup(onPress: (){}, icon: FontAwesomeIcons.ccDiscover, text: "Doscover"),
                        FacebookButtonGroup(onPress: (){}, icon: Icons.add, text: "Create"),
                        FacebookButtonGroup(onPress: (){}, icon: Icons.settings, text: "Settings"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: groups.length,
                        itemBuilder: (context,int index){
                           return FacebookCardGroup(onTap: (){

                           }, onTapCancel: (){

                           }, padding: 20, title: groups[index].title, ImagePath: groups[index].image_path);
                        },
                      ),
                    ),
                  )

                ],
              ),
            ),
            Container(
              height: 500,
              child: FutureBuilder(
               future: DefaultAssetBundle.of(context).loadString('assets/json/group.json'),

               builder: (context,AsyncSnapshot snapshot){
                 var data = json.decode(snapshot.data.toString());

                 return ListView.builder(
                   itemCount: data.length,
                   itemBuilder: (context, int index){
                    return  Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Text(data[index]['Cool'])
                        ],
                      ),
                    );
                 },);
              }),
            )
          ],
        ),
      ),
    );
  }
}
enum padding {
  active,
  cancel
}