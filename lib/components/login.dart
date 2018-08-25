import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:talk_funnel/components/topics.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(16.0),
              child: new RaisedButton(
                padding: EdgeInsets.all(16.0),
                child: new Text("Login"),
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                onPressed: (){
                  
                },
              ),
            ), 
            new Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            // new RaisedButton(
            //   padding: EdgeInsets.zero,
            //   child: new Text("Logout"),
            //   color: Theme.of(context).accentColor,
            //   textColor: Colors.white,
            //   onPressed: (){_signOut();},
            // ), 
          ], 
        );
    }
}
