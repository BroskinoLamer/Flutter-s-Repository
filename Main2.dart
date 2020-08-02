import 'package:flutter/material.dart';
import 'Comments.dart';
import 'ProfilePage.dart';
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Instagram",style:TextStyle(fontFamily:"BillaBong",fontSize:40.0),),
            Padding(padding:EdgeInsets.symmetric(horizontal:30.0,vertical:10.0),
              child :TextFormField(

                decoration:InputDecoration(labelText:"email"),


            ),),
            Padding(
            padding:EdgeInsets.symmetric(horizontal:30.0,vertical:10.0),
            child:TextFormField(decoration:InputDecoration(labelText:"PassWord"),),),
            ButtonTheme(
              minWidth:200.0,
              child: RaisedButton(
              child: Text('Open route'),
              onPressed: () {
                //if
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
                },
              ),

            ),
            ButtonTheme(
              minWidth:200.0,
              child: RaisedButton(
                child: Text('Open route'),
                onPressed: () {

                  //if

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),

            ),
          ]
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {

  //-

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Instagram",style:TextStyle(fontFamily:"BillaBong",color:Colors.black,fontSize:30.0,),),backgroundColor:Colors.white,centerTitle:false,actions:<Widget>[IconButton(icon:Icon(Icons.camera_alt),)],),
      body:Home(),

      );
  }
}
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
class _HomeState extends State<Home> {

  //sky


  Color _iconColor = Colors.grey;
  Color _buttonColor = Colors.lightBlue;
  onPressed(){
    setState((){
      //_iconColor=Colors.red;
      if(_iconColor==Colors.grey){
        _iconColor=Colors.red;


      }
      else{
        _iconColor=Colors.grey;


      }



    }


    );



  }

//-

  //ù


  String _Text ="Follow";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(children:<Widget>[
        Container(
          //height:80.0,
          height:MediaQuery.of(context).size.height*0.1,
          child:ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap:true,
            children:<Widget>[Row(
              children: <Widget>[
                Container(
                  width:70.0,
                  //c
                  //cg
                  child:Column(children:[
                    CircleAvatar(
                      radius: 30.0,


                    ),
                    //Text("your ")
                    Text("Your Story",style:TextStyle(fontSize:13.0,fontWeight:FontWeight.bold),),
                  ],),


                ),
                Container(
                  width:70.0,
                  //c
                  //cg
                  child:Column(children:[
                    CircleAvatar(
                      radius: 30.0,



                    ),
                  ],),


                ),
                Container(
                  width:70.0,
                  //c
                  //cg
                  child:Column(children:[
                    CircleAvatar(
                      radius: 30.0,



                    ),
                  ],),


                ),
                Container(
                  width:70.0,
                  //c
                  //cg
                  child:Column(children:[
                    CircleAvatar(
                      radius: 30.0,



                    ),
                  ],),


                ),
                Container(
                  width:70.0,
                  //c
                  //cg
                  child:CircleAvatar(
                    radius: 30.0,


                  ),

                ),                Container(
                  width:70.0,
                  //c
                  //cg
                  child:CircleAvatar(
                    radius: 30.0,


                  ),

                ),                Container(
                  width:70.0,
                  //c
                  //cg
                  child:CircleAvatar(
                    radius: 30.0,


                  ),

                ),                Container(
                  width:70.0,
                  //c
                  //cg
                  child:CircleAvatar(
                    radius: 30.0,


                  ),

                ),                Container(
                  width:70.0,
                  //c
                  //cg
                  child:CircleAvatar(
                    radius: 30.0,


                  ),

                ),                Container(
                  width:70.0,
                  //c
                  //cg
                  child:CircleAvatar(
                    radius: 30.0,


                  ),

                ),                Container(
                  width:70.0,
                  //c
                  //cg
                  child:CircleAvatar(
                    radius: 30.0,


                  ),

                ),







              ],


            ),
            ]
        ),
        ),

        Expanded(child:ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap:true,
          children:<Widget>[


            //ù



            Column( children: <Widget>[


              Container(
                child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 2.0),
                        child: Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7.0, 7.0, 0.0, 0.0),
                        child: Text("Linda"),
                      ),

                      Container(
                        child: Padding(
                          padding:EdgeInsets.fromLTRB(170.0, 7.0,7.0, 7.0),
                          child:ButtonTheme(
                            minWidth:20.0,
                            height:22.0,

                            child: RaisedButton(



                              //-

                              color:_buttonColor,

                              //-

                              //ZZ
                              child:Text(_Text),
                              onPressed: () {
                                setState(() {

                                  //?


                                  //-

                                  if(_buttonColor == Colors.grey){
                                    _buttonColor=Colors.lightBlue;
                                    _Text="follow";

                                  }
                                  else{
                                    _buttonColor=Colors.grey;
                                    _Text="UNFollow";




                                  }
                                });
                              },),
                          ),),

                      ),

                    ]

                ),
              ),
              GestureDetector(
                onDoubleTap: this.onPressed,
                child:Stack(
                    alignment:Alignment.center,
                    children:<Widget>[Image.asset("images/PostedImage.jpg"),
                      Icon(Icons.favorite,color:Colors.white,size:70.0),

                    ]
                ),

              ),

              new SizedBox(
                child: Container(
                  child: Row(
                    children:<Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(2.0, 1.0, 0.0, 0.0),
                        child: IconButton(
                            iconSize: 23.0,
                            icon: Icon(Icons.favorite, color:_iconColor),
                            onPressed:(){
                              setState((){
                                if(_iconColor==Colors.grey){
                                  _iconColor=Colors.red;


                                }
                                else{
                                  _iconColor=Colors.grey;


                                }




                              }


                              );
                            }
                        ),),
                      IconButton(icon:Icon(Icons.chat_bubble_outline),


                          onPressed:(){
                            setState(() {
                              Navigator.push(context,MaterialPageRoute(builder:(context) =>CommentsPage()));


                            });

                          }
                      ),

                    ],
                  ),),

              ),
              Container(child:Image.asset("images/PostedImage.jpg"),
              ),
              Container(child:Image.asset("images/PostedImage.jpg"),
              ),
              Container(child:Image.asset("images/PostedImage.jpg"),
              ),

            ],

            ),
          ],

        ),
        ),]),


    );
    //]
  }
}
