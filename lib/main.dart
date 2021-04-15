import 'package:flutter/material.dart';
import 'package:volunteer/Home.dart';
import 'package:volunteer/VolunteerRequestScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:Home(),
        routes: {
          "Home": (context) {
            return Home();
          },
          "VolunteerRequestScreen": (context) {
            return VolunteerRequestScreen();
          },
        }
    );}}
