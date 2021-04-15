//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:volunteer/VolunteerRequestScreen.dart';
class MyDrawer extends StatelessWidget {
  final String Name;
  final String Email;

  MyDrawer(this.Name, this.Email);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              " Hello $Name",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            accountEmail: Text(
              Email,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person), backgroundColor: Colors.grey),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text("Home Page"),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.of(context).pushNamed("Home");
            },
          ),

          ListTile(
            title: Text("My Account"),
            leading: Icon(Icons.account_box),
            onTap: () {
              print("tap");
            },
          ),
          ListTile(
            title: Text(" Volunteer Request"),
            leading: Icon(Icons.present_to_all_outlined),
            onTap: () {
              Navigator.of(context).pushNamed("VolunteerRequestScreen");
            },
          ),
          ListTile(
            title: Text("About us"),
            leading: Icon(Icons.info),
            onTap: () {
              print("tap");
            },
          ),
          ListTile(
            title: Text("connect with us"),
            leading: Icon(Icons.call),
            onTap: () {
              print("tap");
            },
          ),
          ListTile(
            title: Text("Sign out "),
            leading: Icon(Icons.login),
            onTap: () {
             print("tap");
            },
          )
        ],
      ),
    );
  }
}
