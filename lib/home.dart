import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack/cont1.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(
               color: Color(0xff29A877),
            child: Column(
              children: [
                SizedBox(height:35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text('4', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 43)),
                        SizedBox(width: 60),

                         Container(
                            height:75,
                              width:75,
                          child: Image.asset('assets/pic.png', width:30)
                          ),

                       SizedBox(width: 30),
                       Text('34 KGs', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35)),
                          ]
            ),

                Row(
                  children: [
                    SizedBox(width: 45),
                    Text('Badges', style: TextStyle(color: Colors.white, fontSize: 17)),
                    SizedBox(width: 145),
                    Text('of Carbon Saved', style: TextStyle(color: Colors.white, fontSize: 16)),
                  ]
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    height: 30,
                    width: 100,

                    child: Text("5632 Points",  textAlign: TextAlign.center, style: TextStyle(fontSize: 13, color: Colors.white)
                      ),
                    )
                  ,
    ]
                ),
                SizedBox(height: 10),
               Container(
               color: Colors.white,
               margin: EdgeInsets.all(10.0),
               height: 520,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Row(
                       children: [
                         SizedBox(width: 10),
                         SizedBox(height: 10),
                     GestureDetector(
                       onTap: (){
                         Navigator.pushReplacement(context,
                             MaterialPageRoute(
                               builder: (context) => Container1(),
                             ));
                       },
                       child: Container(
                         margin: EdgeInsets.all(10.0),
                         color: Colors.black26,
                         height: 140,
                         width: 100,
                           child: Image.asset('assets/redshirt.png', fit: BoxFit.fitWidth),
                       ),
                     ),

                     Container(
                       margin: EdgeInsets.all(10.0),
                       color: Colors.black26,
                       height: 140,
                       width: 100,
                     ),

                     Container(
                       margin: EdgeInsets.all(10.0),
                       color: Colors.black26,
                       height: 140,
                       width: 100,
                     ),

              ]
               ),
                     SizedBox(height: 10),
                     Row(
                         children: [
                           SizedBox(width: 10),
                           Container(
                             margin: EdgeInsets.all(10.0),
                               color: Colors.black26,
                               height: 140,
                               width: 100,
                           ),

                           Container(
                             margin: EdgeInsets.all(10.0),
                             color: Colors.black26,
                             height: 140,
                             width: 100,
                           ),

                           Container(
                             margin: EdgeInsets.all(10.0),
                             color: Colors.black26,
                             height: 140,
                             width: 100,
                           ),

                         ]
                     ),
                     SizedBox(height:10),
                     Row(
                         children: [
                           SizedBox(width: 10),
                           Container(
                             margin: EdgeInsets.all(10.0),
                             color: Colors.black26,
                             height: 140,
                             width: 100,
                           ),

                           Container(
                             margin: EdgeInsets.all(10.0),
                             color: Colors.black26,
                             height: 140,
                             width: 100,
                           ),

                           Container(
                             margin: EdgeInsets.all(10.0),
                             color: Colors.black26,
                             height: 140,
                             width: 100,
                           ),
                           SizedBox(height:10)

                         ]
                     )
                   ]
                 )
        )
            ]
            )

            )




        );

  }
}
