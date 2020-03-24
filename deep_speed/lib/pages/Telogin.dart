
import 'package:deep_speed/common/AppCard.dart';
import 'package:deep_speed/pages/TRegister.dart';
import 'package:flutter/material.dart';

import '../ThompageRoute.dart';


class TeLoginPage extends StatelessWidget {
  String _name;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  @override
  
  TeLoginPage({Key key}):
  super(key: key);
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Login', style: TextStyle(fontStyle: FontStyle.normal,color: Colors.black, fontWeight: FontWeight.bold),)
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
                       
            decoration: const InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.text,
            onSaved: (value)  => _name = value,
            validator: (value) {
              if(value.length < 2){
                return 'Please enter a valid username';
              }
            },
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
                     
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20.0),
                      child:  FlatButton(color: Colors.black,
                        textColor: Colors.white,
  onPressed: () {
      if(_formKey.currentState.validate()) {
         Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => THomePageRoute()),
                          );
      }
    
                        },
                        child: Text("Login"),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: (){},
                        child: Text("Forgot Password"),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
              
              
                Text("Don't have an account?"),
                FlatButton(
                  onPressed: (){
                     Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TRegisterPage()));
                  },
                  child: Text("Register here"),
                )
              ],
            )
                  ],
                ),
              ),
            ),
          
         
          
        ]),
      )
      
    ));}}