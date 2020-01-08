import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json/main/constants.dart';

class FacebookCardGroupPost extends StatelessWidget {
  final String profile_image;
  final String username;
  final String group_name;
  final String date_posted;
  final String description;
  final String media_path;
  final String total_reations;
  final String reaction_text;

  FacebookCardGroupPost(
      {@required this.profile_image,
      @required this.username,
      @required this.group_name,
      @required this.date_posted,
      @required this.media_path,
      @required this.total_reations,
      @required this.reaction_text,
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
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: facebook_dgrey_color,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(profile_image),
                                  fit: BoxFit.cover)),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      username,
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ),
                                  ),
                                  Icon(
                                    FontAwesome.caret_right,
                                    color: facebook_dgrey_color,
                                  ),
                                  Expanded(
                                    child: Text(
                                      group_name,
                                      style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  date_posted,
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: facebook_dgrey_color,
                                          fontSize: 13)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
                style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(media_path), fit: BoxFit.cover)),
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
                          total_reations,
                          style: TextStyle(color: Colors.black, fontSize: 13),
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
                            reaction_text,
                            style: TextStyle(fontSize: 13),
                          ))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1.0, left: 8.0, right: 8.0),
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
