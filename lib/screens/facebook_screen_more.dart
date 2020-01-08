import 'package:flutter/material.dart';
import 'package:json/main/constants.dart';
import 'package:json/models/more_model.dart';

class FacebookScreenMore extends StatefulWidget {
  FacebookScreenMore({Key key}) : super(key: key);

  @override
  _FacebookScreenMoreState createState() => _FacebookScreenMoreState();
}

class _FacebookScreenMoreState extends State<FacebookScreenMore> {
  List<MoreModel> items = [
    MoreModel(image: "assets/images/page.jpg", title: "Your 1 Page"),
    MoreModel(image: "assets/images/bookmarks.png", title: "Bookmark"),
    MoreModel(image: "assets/images/events.png", title: "Events"),
    MoreModel(image: "assets/images/friends.png", title: "Friends"),
    MoreModel(image: "assets/images/memories.png", title: "Memories"),
    MoreModel(image: "assets/images/multimedia.png", title: "Multimedia"),
    MoreModel(image: "assets/images/localization.png", title: "Locals"),
    MoreModel(image: "assets/images/gaming.png", title: "Gaming"),
    MoreModel(image: "assets/images/jobs.png", title: "Jobs"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: facebook_dgrey_color,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: facebook_grey_color,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/sarah.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Sarah Wanjiru",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Text(
                            "See your Profile",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: facebook_dgrey_color),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: items.length,
                        itemBuilder: (context, int index) {
                          return Container(
                            height: 60,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2.0, right: 16, left: 8),
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Image(image: AssetImage(
                                          items[index].image))),
                                ),
                                Text(
                                  items[index].title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
