import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:json/main/constants.dart';

class FacebookCardNotification extends StatelessWidget {
  final String ImageData;
  final String title;
  final String date;
  final Color color;
  final String icon;
  
  FacebookCardNotification({@required this.ImageData,@required this.title,@required this.date,@required this.color,@required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: facebook_grey_color,
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage(ImageData),fit: BoxFit.cover)
                      ),

                    ),
                  ),
                  Positioned.fill(
                    bottom: 10,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: facebook_dgrey_color,
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(icon),fit: BoxFit.cover)

                          ),

                        ),
                      ),
                    ),
                  ),
                ],
              ),
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left :8.0),
                         child: Text(title, style: GoogleFonts.averageSans(
                           textStyle: TextStyle(fontSize: 20,color: Colors.black)
                         ),),
                       ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text(date, style :GoogleFonts.averageSans(
                              textStyle: TextStyle(fontSize: 15,color: facebook_dgrey_color)
                          ),),
                        )
                      ],
                    ),
               ),
             ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_horiz, color: facebook_dgrey_color,size: 30,),
              )
            ],
          ),

        ],
      ),
    );
  }
}
