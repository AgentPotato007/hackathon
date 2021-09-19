import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text("My Account", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    backgroundColor: Color(0xff29A877),
    elevation: 0.0,
    brightness: Brightness.light,
    ),
    body: Container(
        padding: EdgeInsets.symmetric(horizontal: 80),
    color: Colors.greenAccent,
        child: Column(
        children: [
          SizedBox(height: 15),
          Image.asset("assets/pic.png", height: 300),
          SizedBox(height:5),
          Text("Emma Watson", style: TextStyle(fontWeight: FontWeight.bold, color: Colors. white, fontSize: 24)),
          SizedBox(height:15),
        Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            height: 100,
            width:300,
            decoration: BoxDecoration(
                color: Color(0xff29A877),
                borderRadius: BorderRadius.circular(18)
            ),

            child: Text("Total Number of Points: 10578", style: TextStyle(fontWeight: FontWeight.bold, color: Colors. white, fontSize: 14)),
        ),
          SizedBox(height:15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            height: 100,
            width:300,
            decoration: BoxDecoration(
                color: Color(0xff29A877),
                borderRadius: BorderRadius.circular(18)
            ),

            child: Text("Current Number of Points: 5632", style: TextStyle(fontWeight: FontWeight.bold, color: Colors. white, fontSize: 14)),
          )
        ]
    )
    )
    )
    ;
  }
}
