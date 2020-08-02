import 'package:flutter/material.dart';
void main() => runApp(App());
class App extends StatelessWidget{
  void onPressed(){
    print("OnPressed");
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:Text("My App"),


        ),
        body:RaisedButton(
            child:Text("MyRaisedButton",
              style:TextStyle(
                color:Colors.blue,
                fontWeight:FontWeight.bold,
              )),
          onPressed: this.onPressed,
        ),
        floatingActionButton:FloatingActionButton(
          child:Icon(Icons.offline_bolt),
          onPressed:this.onPressed,
        ),
      ),


    );


  }



}