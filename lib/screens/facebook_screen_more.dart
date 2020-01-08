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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: facebook_dgrey_color,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
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
                      Text(
                        "Sarah Wanjiru",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
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
            Container(
              color: Colors.white,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      height: 100,
                      child: Row(
                        children: <Widget>[
                          Image(image: AssetImage(items[index].image)),
                          Text(
                            items[index].title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
