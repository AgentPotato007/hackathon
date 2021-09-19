import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack/home.dart';
import 'package:hack/sell.dart';

import 'main.dart';

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  _Container1State createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    centerTitle: true,
        title: Text("Sell Item", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xff29A877),
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height:20),
            Container(
              height: 350,
              width: 350,
              child: Image.asset("assets/redshirt.png", fit: BoxFit.scaleDown),
            ),
            SizedBox(height:20),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "What item of clothing are you selling?"
      )),
            SizedBox(height:10),
            TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "What is its condition?"
    )),
                SizedBox(height:10),
             TextField(
             decoration: const InputDecoration(
             border: OutlineInputBorder(),
             hintText: "Points to sell item for"
            )
          ),
                SizedBox(height:20),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(
                          builder: (context) => SearchPage(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    alignment: Alignment.center,
                    height: 60,
                    width:200,
                    decoration: BoxDecoration(
                        color: Color(0xff29A877),
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: Text("Sell!",  textAlign: TextAlign.center, style: TextStyle(fontSize:25, color: Colors.white, fontWeight: FontWeight.bold)),

                  ),
                ),
                SizedBox(height:10),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Container(

                    alignment: Alignment.center,
                    height: 35,
                    width:100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(18)
                    ),
                    child: Text("Cancel",  textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.white)),

                  ),
                )
        ]
        )

              ]
          )

        )
      );

  }
}
