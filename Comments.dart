import 'package:flutter/material.dart';
class CommentsPage extends StatefulWidget{
  @override
  createState() => new commentspagestate();


}
class commentspagestate extends State<CommentsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Comments",style:TextStyle(color:Colors.black)),backgroundColor: Colors.white,),
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