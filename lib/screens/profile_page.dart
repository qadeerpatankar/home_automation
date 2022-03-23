import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  Widget  _placeContainer(String title, Color color,bool leftIcon){
    return Column(children: <Widget>[
      Container(
          height: 60,
          width: MediaQuery.of(context).size.width - 40,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color:color),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title,style: TextStyle(color: leftIcon ? Color(0xffa3a3a3) : Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
              leftIcon ? Icon(Icons.add,color: Color(0xffa3a3a3),)
                  : Container()
            ],)
      )
    ],);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Color(0xffe7eaf2),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(40.0,40,40,70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Profile',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(75),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            offset: Offset(10, 15),
                            color: Color(0x22000000),
                            blurRadius: 20.0)
                      ],
                      image: DecorationImage(
                          image: AssetImage("assets/images/download.png")),),),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Waseem Kazi',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40,),
                _placeContainer('Apartment',Color(0xff526fff),false),
                _placeContainer('Settings',Color(0xff8f48ff),false),
                _placeContainer('Settings',Color(0xff6f48ff),false),
                _placeContainer('Add another one',Color(0xffffffff),true),
              ],
            ),
          ),
        ));
  }
}

