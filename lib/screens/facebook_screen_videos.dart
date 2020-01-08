import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:json/components/app_bar_icon.dart';
import 'package:json/components/facebook_card_videos.dart';
import 'package:json/main/constants.dart';

class FacebookScreenVideos extends StatefulWidget {

  @override
  _FacebookScreenVideosState createState() => _FacebookScreenVideosState();
}

class _FacebookScreenVideosState extends State<FacebookScreenVideos> {
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
    return Scaffold(
      backgroundColor: facebook_dgrey_color,
      body: SingleChildScrollView(
        child: Container(
          color: facebook_dgrey_color,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Videos", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),)),
                      AppBarIcon(icon: FontAwesomeIcons.user, onPress: () {}),
                      AppBarIcon(icon: FontAwesomeIcons.search, onPress: () {}),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: facebook_dgrey_color,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Stack(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Your Watchlist", style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),),
                        ),

                      ],
                    ),
                    Positioned(
                        top: 10,
                        left: 280,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              color: facebook_dgrey_color,
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(
                                  'assets/images/photo.jpg'), fit: BoxFit.cover)

                          ),
                        )),
                    Positioned(
                        top: 10,
                        left: 300,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              color: facebook_dgrey_color,
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(
                                  'assets/images/china.jpg'), fit: BoxFit.cover)

                          ),
                        )),
                    Positioned(
                        top: 10,
                        left: 320,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 1),
                              color: facebook_dgrey_color,
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(
                                  'assets/images/car1.jpg'), fit: BoxFit.cover)
                          ),
                        )),
                  ],),
              ),
              FutureBuilder(
                  future: DefaultAssetBundle.of(context).loadString(
                      'assets/json/video.json'),
                  builder: (context, snapshot) {
                    var data = json.decode(snapshot.data.toString());
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: data.length,
                        itemBuilder: (context, int index) {
                          return FacebookCardVideos(
                              profile_image: data[index]['profile_image'],
                              user_name: data[index]['user_name'],
                              post_date: data[index]['date_posted'],
                              description: data[index]['title'],
                              post_des: data[index]['title'],
                              media_path: data[index]['media_path'],
                              num_reactions: data[index]['no_of_reactions'],
                              text_reaction: data[index]['people_reacted']
                          );
                        });
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
