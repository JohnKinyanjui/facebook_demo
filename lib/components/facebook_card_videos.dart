import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:json/main/constants.dart';

class FacebookCardVideos extends StatelessWidget {
  final String profile_image;
  final String user_name;
  final String description;
  final String post_date;
  final String post_des;
  final String media_path;
  final String num_reactions;
  final String text_reaction;

  FacebookCardVideos(
      {@required this.profile_image,
      @required this.user_name,
      @required this.post_date,
      @required this.post_des,
      @required this.media_path,
      @required this.num_reactions,
      @required this.text_reaction,
      @required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: facebook_grey_color,
                        image: DecorationImage(
                            image: AssetImage(profile_image),
                            fit: BoxFit.cover)),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            user_name,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: facebook_blue_color,
                                  shape: BoxShape.circle),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  color: facebook_blue_color,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        post_date,
                        style: TextStyle(
                            color: facebook_dgrey_color,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(media_path), fit: BoxFit.cover)),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.playCircle,
                  color: Colors.white,
                  size: 80,
                ),
              ),
              height: 300,
            ),
            Container(
              height: 50,
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, right: 8.0),
                        child: Text(
                          num_reactions,
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                      left: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: facebook_dgrey_color,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                              image: DecorationImage(
                                  image: AssetImage('assets/emoji/emoji1.png'),
                                  fit: BoxFit.cover)),
                        ),
                      )),
                  Positioned(
                      left: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: facebook_dgrey_color,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                              image: DecorationImage(
                                  image: AssetImage('assets/emoji/emoji.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      )),
                  Positioned(
                      left: 28,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 12.0),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: facebook_dgrey_color,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                              image: DecorationImage(
                                  image: AssetImage('assets/emoji/emoji2.png'),
                                  fit: BoxFit.cover)),
                        ),
                      )),
                  Positioned(
                      left: 65,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 0.0, top: 15.0),
                          child: Text(
                            text_reaction,
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey[600]),
                          ))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.0, left: 0.0, right: 0.0),
              child: Container(
                color: facebook_dgrey_color,
                height: 1,
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.thumbsUp,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {}),
                          Text(
                            "Like",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[600]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                FlevaIcons.message_square_outline,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {}),
                          Text(
                            "Comment",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[600]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                FlevaIcons.share_outline,
                                color: Colors.grey[600],
                              ),
                              onPressed: () {}),
                          Text(
                            "Share",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[600]),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
