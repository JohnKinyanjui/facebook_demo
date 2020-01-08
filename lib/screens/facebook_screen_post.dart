import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:json/main/constants.dart';
import 'package:json/components/facebook_card_icon_text.dart';
import 'package:json/components/facebook_card_post.dart';
import 'package:json/models/model_story.dart';
import '../components/facebook_card_comment.dart';
import '../components/facebook_card_story.dart';

class FacebookScreenPost extends StatefulWidget {
  FacebookScreenPost({Key key}) : super(key: key);

  @override
  _FacebookScreenPostState createState() => _FacebookScreenPostState();
}
bool visible = false;

class _FacebookScreenPostState extends State<FacebookScreenPost> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void loadData(){
    DefaultAssetBundle.of(context).loadString('assets/json/FacebookPost.json');
  }
  List<ModelStory> story_list = [
    ModelStory(
        image_Path: "assets/images/photo.jpg",
        user_name: "Add a story",
        profile_path: "assets/images/photo.jpg"),
    ModelStory(
        image_Path: "assets/images/china.jpg",
        user_name: "Wung Chang",
        profile_path: "assets/images/china.jpg"),
    ModelStory(
        image_Path: "assets/images/sunset.jpg",
        user_name: "Jakal",
        profile_path: "assets/images/sunset.jpg"),
    ModelStory(
        image_Path: "assets/images/pexel.jpeg",
        user_name: "Jakal",
        profile_path: "assets/images/pexel.jpeg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: facebook_dgrey_color,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(height: 1, width: double.infinity, color: facebook_dgrey_color,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: facebook_grey_color,
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage('assets/images/sarah.jpg'),fit: BoxFit.cover)
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: facebook_dgrey_color, width: 1),

                            ),
                              child: Padding(
                                padding: const EdgeInsets.only(left : 22.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "What's on your mind?",
                                    hintStyle: TextStyle(fontWeight: FontWeight.w400, color: Colors.black)
                                  ),
                                ),
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(height: 1, width: double.infinity, color: facebook_dgrey_color,),
                 Center(
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Expanded(child: FacebookCardIconText(tStyle: TextStyle(fontWeight: FontWeight.bold), icon: FontAwesomeIcons.video, text: "Live", color: Colors.white, ccolor: Colors.red,)),
                       Container(height: 30,width: 1,color: facebook_dgrey_color,),
                       Expanded(child: FacebookCardIconText(tStyle: TextStyle(fontWeight: FontWeight.bold), icon: Ionicons.ios_images, text: "Photo", color: Colors.white, ccolor: Colors.greenAccent,)),
                       Container(height: 25,width: 1,color: facebook_dgrey_color,),
                       Expanded(child: FacebookCardIconText(tStyle: TextStyle(fontWeight: FontWeight.bold), icon: Icons.location_on, text: "Live", color: Colors.white, ccolor: Colors.pink,)),
                     ],
                   ),
                 )
                ],
              ),
            ),

           Container(
             height: 200,
             margin: EdgeInsets.only(top: 8),
             color: Colors.white,
             child: ListView.builder(
                  addAutomaticKeepAlives: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: story_list.length,
                    itemBuilder: (context, int index){
                  return FacebookCardStory(
                      profile_image: story_list[index].profile_path,
                      board_image: story_list[index].image_Path,
                      isVisible: index == 0 ? visible = true : false,
                      user_name: index == 0 ? "Add your story" : story_list[index].user_name
                  );
                }),
           ),


           Padding(
             padding: const EdgeInsets.only(top: 10),
             child: Container(
               width: double.infinity,
               color: facebook_dgrey_color,
               child: FutureBuilder(
                   future :DefaultAssetBundle.of(context).loadString('assets/json/FacebookPost.json'),
                   builder: (context,snapshot){
                     var data = json.decode(snapshot.data.toString());
                     return ListView.builder(
                       scrollDirection: Axis.vertical,
                         itemCount:  data.length,
                         shrinkWrap: true,
                         physics: const NeverScrollableScrollPhysics(),
                         itemBuilder: (context, int index){
                           return FacebookCardPost(
                               image_path: data[index]['media_path'],
                               date: data[index]['date_posted'],
                               description: data[index]['title'],
                               reactions: data[index]['people_reacted'],
                               nums: data[index]['no_of_reactions'],
                               user_name: data[index]['user_name'],
                               profile_path: data[index]['profile_image'],
                              
                              child: Column(
                                children: <Widget>[
                                  Facebook_Card_Comment(
                                      comment_username: data[index]['comments'][0]['cuser_name'],
                                      comment_profile_pic: data[index]['comments'][0]['cprofile_image'],
                                      comment_text: data[index]['comments'][0]['ctitle']),
                                  Facebook_Card_Comment(
                                      comment_username: data[index]['comments'][1]['cuser_name'],
                                      comment_profile_pic: data[index]['comments'][1]['cprofile_image'],
                                      comment_text: data[index]['comments'][1]['ctitle']),
                                ],
                              ),
                             comment_visible: data[index]['comments_visible'],

                           );
                         });
                   }),
           ),
           )],
        )
      ),
    );
  }
}
