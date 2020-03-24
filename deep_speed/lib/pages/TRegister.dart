import 'dart:convert';


import 'package:deep_speed/common/AppCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Telogin.dart';
import 'Thomepage.dart';





class TRegisterPage extends StatelessWidget {
String _name;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final TextEditingController _pass = TextEditingController();
final TextEditingController _confirmPass = TextEditingController();



 

  @override
  TRegisterPage({Key key}):
  super(key: key);
  Widget build(BuildContext context) {
    
    return Scaffold(
         backgroundColor: Colors.white,
          appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Register', style: TextStyle(fontStyle: FontStyle.normal,color: Colors.black, fontWeight: FontWeight.bold),)
      ),
      body: SingleChildScrollView(
       child: Form(
         autovalidate: true,
        key: _formKey,
             
             child: Column(children: <Widget>[
                AppCard(
                  child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                      children: <Widget>[
                        Container(
                      margin: EdgeInsets.only(bottom:50, top: 0),
                   child: Image.asset(
                "assets/images/sticky.png", height: 200,width: 200,),
                
                
                ),
                         TextFormField(
                           decoration: const InputDecoration(labelText: 'First Name'
                ),
              
            keyboardType: TextInputType.text,
            onSaved: (value)  => _name = value,
            validator: (value) {
              if(value.length == 0){
                return 'Please enter your first name';
              }
            },
          ),
                        TextFormField(
                                   decoration: const InputDecoration(labelText: 'Last Name'),
            keyboardType: TextInputType.text,
            onSaved: (value)  => _name = value,
            validator: (value) {
              if(value.length == 0){
                return 'Please enter your last name';
              }
            },
          ),
                        TextFormField(
                                    decoration: const InputDecoration(labelText: 'DD/MM/YYYY'),
            keyboardType: TextInputType.datetime,
            validator: (value) {
              if(value.length == 0){
                return 'Please enter your Age';
              }
            },
          ),
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Nationality'),
            keyboardType: TextInputType.number,
            validator: (value) {
              if(value.length == 0){
                return 'Please enter your country of origin';
              }
            },
          ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Mobile Number"),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Email"),
                        ),
                         TextFormField(
                      controller: _pass,
                     decoration: const InputDecoration(labelText: 'Password'),
                     keyboardType: TextInputType.text,
                     obscureText: true,
            validator: (value) {
              if(value.isEmpty){
                return 'please enter password';
              }else if(value.length < 6){
                return'Password should be more than 6';

              }
            },
                    ),
                     TextFormField(
                      controller: _confirmPass,
                     decoration: const InputDecoration(labelText: 'Confirm Password'),
                     keyboardType: TextInputType.text,
                     obscureText: true,
            validator: (value) {
              if(value.isEmpty){
                return 'please confirm password';
              }else if(value != _pass.text){
                return'Passwords do not match';

              }
            },
                    ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            color: Colors.black,
                            textColor: Colors.white,
                            onPressed: (){ if(_formKey.currentState.validate()) {
         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => THomePage()),
                          );
      }},
                            child: Text("Register"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TeLoginPage()));
                      },
                      child: Text("Sign up"),
                    ),
                    Text("Have an account?"),
                  ],
                )
              ]
          ),
    )));
  }
}
