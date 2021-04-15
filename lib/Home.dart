//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:volunteer/VolunteerMenu.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  String Name = "";
  String Email = "";

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Volunteer"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.control_point), onPressed: () {})
          ],
        ),
        drawer: MyDrawer(Name,Email), //End Drawer
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Stack(
                      children: <Widget>[]
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}