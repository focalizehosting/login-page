import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'secondpage.dart';

void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Login Page",
     theme: ThemeData(),
    home: Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: Colors.redAccent,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text("Login Screen",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20.0,
            ),
            ),
            
            Padding(
              padding: EdgeInsets.all(20),
              child:Divider(
              thickness:3,
              color: Colors.white,
            ),

            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text("Email"),
                  TextField(
                    cursorColor: Colors.redAccent,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide( color: Colors.redAccent)
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical:5),
                    child: Text("Password"),
                  ),
                  
                  TextField(
                     cursorColor: Colors.redAccent,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide( color: Colors.redAccent)
                  ),
                 Padding(
                   padding: EdgeInsets.symmetric(vertical:10),
                   child:Text("Forgot Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ) ,
                 ),
                 SizedBox(
                   height: 20,
                 ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical:10, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    
                      child: Text("Loginn",
                                                  
                      style: TextStyle(
                        fontWeight:FontWeight.bold,
                        color: Colors.white,
                         onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Secondpage(),
                  )))),
                      ),
                     
                      ),
                    ),
                  ),
                ],
              ),
              )
              
            )
          ],
      ),


    ),
   );
  }

}
