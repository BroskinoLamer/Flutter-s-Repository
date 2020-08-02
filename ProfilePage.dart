import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget{
  @override
  createState() => new profilepagestate();


}
class profilepagestate extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("ProfilePage",style:TextStyle(color:Colors.black)),backgroundColor: Colors.white,),
      body:Column(
          children:[Container(
            alignment: Alignment.bottomCenter,
            //E
            padding:EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Flexible(child:TextField(




                ),),

              ],

              //qw

            ),




          ),




          ]

      ),


    );
  }


}