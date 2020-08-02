import 'package:flutter/material.dart';
class InstagramHome extends StatefulWidget{
  @override
  createState() => new InstagramHomePage();


}
class InstagramHomePage extends State<InstagramHome>{

  //-

  Color _HeartColor = Colors.grey;
  _HeartColorChanger(){
    setState(() {

      //-H

      if(_HeartColor==Colors.grey){
        _HeartColor=Colors.red;
      }
      else{
        //_HeartColor==
        _HeartColor=Colors.grey;
      }

    });
  }
  Color _ColorTextFollow=Colors.lightBlue;
  String _FollowText ="+ Follow";
  //String _
  //o

  //ù

  _ChangeTextFollow(){
    setState(() {
      if(_FollowText=="+ Follow"){
        _FollowText="UNFollow";
        _ColorTextFollow=Colors.white;
        //else



      }
      else{
        _FollowText="+ Follow";
        _ColorTextFollow=Colors.lightBlue;
      }
    });
  }
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      body:      Column(children:<Widget>[
        Container(
          height:MediaQuery.of(context).size.height*0.1,
          child:ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            //column
            //col
            children:<Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius:35,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius:30,
                      backgroundImage: AssetImage('images/ProfiloRagazza.jpg'),
                    ),
                  ),
                  CircleAvatar(
                    radius:35,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius:30,
                      backgroundImage: AssetImage('images/ProfiloRagazza.jpg'),
                    ),
                  ),
                  CircleAvatar(
                    radius:35,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius:30,
                      backgroundImage: AssetImage('images/ProfiloRagazza.jpg'),
                    ),
                  ),
                  CircleAvatar(
                    radius:35,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius:30,
                      backgroundImage: AssetImage('images/ProfiloRagazza.jpg'),
                    ),
                  ),
                  CircleAvatar(
                    radius:35,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius:30,
                      backgroundImage: AssetImage('images/ProfiloRagazza.jpg'),
                    ),
                  ),
                  CircleAvatar(
                    radius:35,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius:30,
                      backgroundImage: AssetImage('images/ProfiloRagazza.jpg'),
                    ),
                  ),
                  CircleAvatar(
                    radius:35,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius:30,
                      backgroundImage: AssetImage('images/ProfiloRagazza.jpg'),
                    ),
                  ),

                ],
              ),
            ],//Children_Row
          ),
        ),
        Expanded(
          child:ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,

            children:<Widget>[
              Column(
                children:<Widget>[
                  Container(child:Row(children:<Widget>[
                    //ìcontext
                    Padding(
                      padding:EdgeInsets.fromLTRB(2.0,0.0,7.0,2.0),
                      //child:CircleAvatar
                      child:CircleAvatar(
                        radius:20.0,
                      ),
                    ),
                    Text("Linda"),
                    Padding(
                      padding:EdgeInsets.fromLTRB(160.0, 0.0, 20.0, 2.0),
                      child:ButtonTheme(height:23.0,
                        minWidth:20.0,
                        child: RaisedButton(
                          //Text("Follow")
                          //color:Colors.lightBlue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          color:_ColorTextFollow,
                          child: Text(_FollowText),
                          onPressed:_ChangeTextFollow,
                        ),),
                    ),
                  ]
                  ),),
                  GestureDetector(
                    //onDoubleTap: this._HeartColor,
                    //onDoubleTap: this,
                    //onDoubleTap:this._HeartColor;
                    onDoubleTap: this._HeartColorChanger,
                    child:Stack(
                        children:<Widget>[Image.asset("images/PostedImage.jpg"),
                        ]
                    ),
                  ),
                  //child

                  //child:
                  IconButton(icon:Icon(Icons.favorite,color:_HeartColor,),
                    onPressed:this._HeartColorChanger, ),],
              ),
            ],
          ),
        ),

      ]
      ),


      );
    }
  }