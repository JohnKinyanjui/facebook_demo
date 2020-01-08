import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json/main/constants.dart';

class FacebookCardStory extends StatelessWidget {
  final String profile_image;
  final String board_image;
  final bool isVisible;
  final String user_name;

  FacebookCardStory({@required this.profile_image,@required this.board_image,@required this.isVisible,@required this.user_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17,bottom: 17,left: 4,right: 4),
      child: Container(
        width: 100,
        height: 150,
        decoration: BoxDecoration(
          color: facebook_grey_color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(image: AssetImage(board_image),
          fit: BoxFit.cover)
        ),
        child: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      border: Border.all(color: facebook_blue_color, width: 2),
                      image: DecorationImage(image: AssetImage(profile_image),
                      fit: BoxFit.cover)
                    ),

                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(user_name,style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
                ),
              ],
            ),
            Visibility(
              visible: isVisible,
              child: Padding(
                padding: const EdgeInsets.all(3.5),
                child: Facebook_Fav(),
              ),
            ),

          ],
        )
      ),
    );
  }
}

class Facebook_Fav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){

      },
      shape: CircleBorder(),
      fillColor: Colors.white,
      constraints: BoxConstraints.tightFor(
          width: 42.0,
          height: 42.0
      ),
      child: Icon(Icons.add, color: facebook_blue_color, size: 30,),
    );
  }
}



