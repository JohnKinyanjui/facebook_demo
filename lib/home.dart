import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Companies> fetchdetails = [];
  Future<List<Companies>> fetchCompanies() async {
    var data = await http.get('https://my.api.mockaroo.com/companies.json?key=a9348ee0&format=json');
    var jsonData = json.decode(data.body);
    for(var coval in jsonData){
      Companies companies = Companies(coval['id'], coval['image'], coval['title'], coval['items']);
      fetchdetails.add(companies);
    }
   return fetchdetails;
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchCompanies();
    print("fetching");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Cutom Feed',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 40,color: Colors.white),),
        leading: IconButton(icon: Icon(Icons.menu, color: Colors.black,), onPressed: (){

        }),
      ),
      body: Center(
          child: FutureBuilder(
            future: fetchCompanies(),
            builder: (context, snapshot){
              if(snapshot.data!=null){
                 return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                     itemCount: snapshot.data.length,
                     itemBuilder: (context,int index ){
                       return getBookDetails(
                         snapshot.data[index].id,
                           snapshot.data[index].image,
                           snapshot.data[index].title,
                           snapshot.data[index].items
                       );
                     }
                  );
              }
              return CircularProgressIndicator();
            },
          ),

      ),
    );
  }

}

class Companies {
  int id;
  String title;
  String image;
  String items;

  Companies(this.id, this.title,this.image,  this.items);
}

Widget getBookDetails(
    int id,
    String title,
    String image,
    String items
    ){
   return Container(
     width: 180,
     height: double.infinity,
     margin: EdgeInsets.all(10),
     decoration: BoxDecoration(
       borderRadius: BorderRadius.all(Radius.circular(10)),
       image: DecorationImage(image: NetworkImage(image),
       fit: BoxFit.fill)
     ),
     child: Column(
       children: <Widget>[
          Text(title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
         Text(id.toString())
       ],
     ),
   );

}