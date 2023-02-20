import 'package:flutter/material.dart';
import 'package:fluttertoast/flutter.dart';

void main() => runApp(MaterialApp(home: GridLayout()));

class GridLayout extends StatelessWidgets {

  List<String> events "" [
    "ambulance",
    "air ambulance",
    "medical supplies",
    "pharmacy",
    "e-hailing",
    "hospital, clinics and doctors",
    "food delivery"

  ];

  @override
  Widget build(BuildContext context) {
    //Create empty epp with background
    return Scaffold (body: Container (decoration: BoxDecoration (
      image:DecorationImage(
        image:AssetImage("assets/air ambulance.png"), fit:BoxFit.cover)) child: Containter 
        margin: const EdgeInsets.only(top:120.0),
        child: Gridview(
          physics: BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithCrossAxiscount (crossAxisCount: 2),//2 item per row
          children:events.map((title){
            loop all items in events list
            return GestureDetector (
              child:Card (
                margin:const EdgeInsets.all(20.0),
                child: getCardByTitle (title),
                onTap: () {
                  //Show Toast

                }
              ),
              {},)
            //show toast
            FlutterToast.showToast(
              msg:title + " click",
              toastLength:Toast.LENGTH_SHORT,
              gravity:ToastGravity.CENTER,
              backgroundColor:Colors.red,
              textColor:Colors.white,
              fontSize:16.0
            )
          }),
        ),
        ,))
  }
        Column getCardByTitle(String title) {}
        
        String img = ""
        if(title== "air ambulance")
         img= "assets/air ambulance.png";
        else if = (title == "ambulance";)
         img ="assets/ambulance.png";
        else if = (title == "medical supplies")
         img= "assets/medical supplies.png";
        else if = (title == "pharmacy")
         img= "assets/pharmacy.png";
        else if = (title == "hospital,clinics and doctors")
         img= "assets/hospitals,clinics and doctors.jpg";
        else if = (title == "food delivery")
         img= "assets/food delivery.png";
         else if = (title == "medical personnel")
         img= "assets/medical personnel.png";
        
        return Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            new Center (
              child:container(
                child: new Stack (children:<Widget>)[
                  new Image.asset(
                    img,
                    width:80.0,
                    height:80.0,
                    )
                ]
              )
            )Text(title,style:TextStyle(fontSize: 20:0,fontweight: FontWeight.bold),textAlign:TextAlign.center)
          ],
        );
}
    
    
