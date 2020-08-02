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
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,

              children: <Widget>[
                Text("Instagram",
                  style:TextStyle(
                    fontSize: 40.0,
                    fontFamily:"BillaBong",
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:30.0,vertical:10.0),
                  child:TextFormField(
                    decoration: InputDecoration(
                      labelText:"email",
                    ),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal:30.0,vertical:10.0),
                  child:TextFormField(
                    decoration: InputDecoration(
                      labelText:"email",
                    ),
                  ),
                ),
               ButtonTheme(
                  //height
                  minWidth:200.0,
                  child:RaisedButton(
                    child:Text("LogIN",style:TextStyle(color:Colors.white),),
                    onPressed:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SecondRoute()),


                      );
                    },
                  ),
              ),
                ButtonTheme(

                  minWidth:200.0,
                  child:RaisedButton(
                    child:Text("SignUP",style:TextStyle(color:Colors.white),),
                    onPressed:this.onPressed,

                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {

          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}