
import 'package:deep_speed/pages/Telogin.dart';
import 'package:flutter/material.dart';





class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Deep Speed', style: TextStyle(fontStyle: FontStyle.normal,color: Colors.black, fontWeight: FontWeight.bold),)
      ),
         body: SingleChildScrollView(
           child:Column(children: <Widget>[
            
         Container(margin: EdgeInsets.only(bottom:50, top: 100),
                   child: Image.asset(
                "assets/images/sticky.png", height: 200,width: 200,),
                
                
                ),
         Center(
           child: FlatButton(color: Colors.yellow,
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TeLoginPage()),
                          );
                        },
                        child: Text("Get Started", style: TextStyle(fontSize: 15.0,color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),),)

           ],)
           
           
         ),
      );
  }
}

