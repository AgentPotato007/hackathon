import 'package:flutter/material.dart';
import 'package:hack/create_post.dart';
import 'package:hack/profile.dart';
import 'package:hack/sell.dart';

import 'home.dart';
import 'buy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReWear',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'ReWear'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

    final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

List <Widget> pages = [
  HomePage(),
  SearchPage(),
  CreatePostPage(),
  NotificationsPage(),
  ProfilePage(),
];


  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 5,
    initialIndex: 0,
        child: Scaffold(

         body: TabBarView(
         children: pages,
         ),
          bottomNavigationBar:
              Container(
              margin: EdgeInsets.only(bottom:5),
               child: new TabBar(
               tabs: [
               Tab(
                icon: Icon(Icons.home),
                ),
               Tab(
                icon: Icon(Icons.monetization_on_outlined),
               ),
                Tab(
                icon: Icon(Icons.add),
              ),
                Tab(
                icon: Icon(Icons.search),
              ),
                Tab(
                icon: Icon(Icons.account_circle_rounded),
              ),
            ],
                 unselectedLabelColor: Colors.grey,
                 labelColor: Colors.green,
                 indicatorColor: Colors.transparent
          ),
              )
   )
    );
  }
}
