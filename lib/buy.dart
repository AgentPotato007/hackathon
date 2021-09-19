import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Buy", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xff29A877),
          elevation: 0.0,
          brightness: Brightness.light,
        ),

        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            color: Colors.greenAccent,
            child: Column(
                children: [
                  Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          alignment: Alignment.center,
                          height: 100,
                          width:100,
                          decoration: BoxDecoration(
                              color: Color(0xff29A877),
                              borderRadius: BorderRadius.circular(18)
                          ),

                          child: Image.asset('assets/skirt.png', fit: BoxFit.fitWidth),

                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          alignment: Alignment.centerLeft,
                          height: 100,
                          width: 260,
                          decoration: BoxDecoration(
                              color: Color(0xff29A877),
                              borderRadius: BorderRadius.circular(18)
                          ),
                          child: Text('520 Points', style: TextStyle(color: Colors.white, fontSize: 25)),
                        ),


                      ]),
                  SizedBox(height: 10),
                  Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          alignment: Alignment.center,
                          height: 100,
                          width:100,
                          decoration: BoxDecoration(
                              color: Color(0xff29A877),
                              borderRadius: BorderRadius.circular(18)
                          ),

                          child: Image.asset('assets/shoes.png', fit: BoxFit.fitWidth),

                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          alignment: Alignment.centerLeft,
                          height: 100,
                          width: 260,
                          decoration: BoxDecoration(
                              color: Color(0xff29A877),
                              borderRadius: BorderRadius.circular(18)
                          ),
                          child: Text('310 Points', style: TextStyle(color: Colors.white, fontSize: 25)),
                        ),


                      ]),
                  SizedBox(height: 10),
                  Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          alignment: Alignment.center,
                          height: 100,
                          width:100,
                          decoration: BoxDecoration(
                              color: Color(0xff29A877),
                              borderRadius: BorderRadius.circular(18)
                          ),

                          child: Image.asset('assets/shirt.png', fit: BoxFit.fitWidth),

                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          alignment: Alignment.centerLeft,
                          height: 100,
                          width: 260,
                          decoration: BoxDecoration(
                              color: Color(0xff29A877),
                              borderRadius: BorderRadius.circular(18)
                          ),
                          child: Text('200 Points', style: TextStyle(color: Colors.white, fontSize: 25)),
                        ),


                      ]),
                ])
        )
    );

  }
}


