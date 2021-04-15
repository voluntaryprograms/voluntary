//import 'dart:html';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:volunteer/confiScreen.dart';


class VolunteerRequestScreen extends StatefulWidget {
  VolunteerRequestScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<VolunteerRequestScreen> {

  String _name="";
  int _age = 1;
  String _id="";
  String _gender;
  String _experience = "";
  String _email = "";
 // File _imageFile;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _builAge() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'age'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'age is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _age = null;
      },
    );
  }

  Widget _buildId() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'ID Number'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'ID is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildGender() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Gender'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Gender is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _gender = value;
      },
    );
  }

  Widget _buildExperience() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Experience'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Experience is Required';
        }
        return null;
      },
      onSaved: (String value) {
        _experience = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form Demo")),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                _builAge(),
                _buildId(),
                _buildGender(),
                _buildExperience(),
                _buildEmail(),


                SizedBox(height: 100),
                RaisedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {

                               return confiScreen();
        }

                    _formKey.currentState.save();

                    print(_name);
                    print(_age );
                    print(_id );
                    print(_gender);
                    print(_experience);
                    print(_email);
                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
