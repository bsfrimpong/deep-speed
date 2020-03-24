import 'package:deep_speed/common/AppCard.dart';
import 'package:flutter/material.dart';





class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('About Us', style: TextStyle(fontStyle: FontStyle.normal,color: Colors.black, fontWeight: FontWeight.bold),)
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                AppCard  (
                  child: Container(
                    margin: EdgeInsets.only(top: 0.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                      margin: EdgeInsets.only(bottom:50, top: 0),
                   child: Image.asset(
                "assets/images/sticky.png", height: 200,width: 200,),
                
                
                ),
                        Container(
                          margin: EdgeInsets.only(top: 0.0),
                          child: Text('Deep Speed, is not just a platform but a family. We offer the easiest and way of delivering and recieving goods to and from your loved ones. Order for a rider now...',
                          style: TextStyle(fontSize: 18.0,color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                           child: Title(color: Colors.white, child: Text("Our Services", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 32.0,color: Colors.black, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                          ),
                        ),
                         Container(
                          margin: EdgeInsets.only(top: 0.0),
                          child: Text('We offer Talent Child(T-child), for JHS and primary students, Smart learning(S-lesrning) for Senior High school Students, U-Music for music students, T-third for tertiary students, and Master Mind for postgraduates',
                          style: TextStyle(fontSize: 18.0,color: Colors.black),
                            textAlign: TextAlign.justify,
                          ),
                         ),
                         Container(
                          margin: EdgeInsets.only(top: 20.0),
                           child: Title(color: Colors.black, child: Text("Contact us", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 32.0,color: Colors.black, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                          ),
                         ),
                         Container(
                          margin: EdgeInsets.only(top: 0.0),
                          child: Text('Mobile- 0550926578/0502193246',
                          style: TextStyle(fontSize: 18.0,color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                         ),
                         Container(
                          margin: EdgeInsets.only(top: 0.0),
                          child: Text('Email- Williehelptrainteacher@gmail.com/ Trainteacher.edughana@gmail.com',
                          style: TextStyle(fontSize: 18.0,color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                         ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
        ));
  }
}
