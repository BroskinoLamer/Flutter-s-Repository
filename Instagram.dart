import 'package:flutter/material.dart';
import './Home.dart';
void main(){
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}
class FirstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Instagram",style:TextStyle(fontFamily: "BillaBong",fontSize:40.0),),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 30.0,vertical:10.0 ),
              child:TextFormField(
                decoration:InputDecoration(labelText: "email"),
              ),
            ),
            Padding(padding:EdgeInsets.symmetric(horizontal: 30.0,vertical:10.0 ,),
              child:TextFormField(decoration: InputDecoration(labelText: "Password"),),
            ),
            ButtonTheme(child:RaisedButton(
              child:Text("LogIN",style:TextStyle(color:Colors.white),),
              //onPressed:this.onPressed;
                onPressed:(){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context) =>SecondRoute(),),);
                        }
            ),),
            ButtonTheme(child:RaisedButton(
              child:Text("SignUP",style:TextStyle(color:Colors.white),),
            ),),
          ],
        ),
      ),
    );
  }
}
class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("Instagram",style:TextStyle(fontFamily: "BillaBong",color:Colors.black),),backgroundColor: Colors.white,),
      body:HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>{

  int _selectedPage=0;
  final _pageOptions=[

    //Text

    InstagramHome(),
    Text("Item 2"),
    Text("Item 3"),
    Text("Item"),
    Text("Item"),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pageOptions[_selectedPage],
      bottomNavigationBar:BottomNavigationBar(
        //cy

          currentIndex:_selectedPage,
          onTap:(int index){
            setState(() {
              _selectedPage=index;
            });


          },
          items:[
            BottomNavigationBarItem(
              icon:Icon(Icons.home,color:Colors.black),
              title:Text("Home"),
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.search,color:Colors.black),
                title:Text("")

            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.file_upload,color:Colors.black),
                title:Text("")

            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.favorite_border,color:Colors.black),
                title:Text("")

            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.favorite_border,color:Colors.black),
              //title:null,
              title:Text("")
            ),

          ]
      ),

    );
  }
}