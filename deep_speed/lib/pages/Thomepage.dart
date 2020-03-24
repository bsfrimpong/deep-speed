import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AboutUs.dart';
import 'calendar.dart';





class THomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
     appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Home', style: TextStyle(fontStyle: FontStyle.normal,color: Colors.black, fontWeight: FontWeight.bold),)
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: (){
                   Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => THomePage()),
                              );
              },
            ),
            ListTile(
              title: Text('Calendar'),
              onTap: (){
                 Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Calendar()),
                              );
              },
            ),
            ListTile(
              title: Text('Activity Block'),
              onTap: (){},
            ),
            ListTile(
              title: Text('About'),
              onTap: (){
                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => About()),
                              );
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: (){},
            ),
            ListTile(
              title: Text('Profile'),
              onTap: (){},
            )
          ],
        ),
      ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                

                ]),


          ),
        );
  }
}
