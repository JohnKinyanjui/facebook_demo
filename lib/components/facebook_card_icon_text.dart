import 'package:flutter/material.dart';


class FacebookCardIconText extends StatelessWidget {
  final TextStyle tStyle;
  final IconData icon;
  final Color ccolor;
  final String text;
  final Color color;


  FacebookCardIconText({@required this.tStyle,@required this.icon,@required this.text,@required this.color, this.ccolor,});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
       decoration: BoxDecoration(
         color: color,
         borderRadius: BorderRadius.all(Radius.circular(20))
       ),
       child: Center(
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right :8.0),
                child: Icon(icon, color: ccolor,),
              ),
              Text(text, style: tStyle,)
           ],
         ),
       ),
    );
  }
}