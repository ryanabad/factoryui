import 'package:factoryui/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivationPage extends StatelessWidget {
  String buttonName = 'Click';
  int currentIndex = 0;
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40.0),
            Image.asset('images/upm_logo.png'),
            SizedBox(height: 40.0),
            Text(
              'Welcome!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
            ),
            Container(

                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.pink[50],

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Enter the activation code you received via SMS'),
                    SizedBox(height: 30,),
                    TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'OTP',
                    ),
                    ),

                    SizedBox(height: 40,),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MainScreen()),
                        );
                      },
                      child: Text('Go to Activation Page'),
                    ),


                  ],)
            )
          ],
        ),
      ),
    );
  }
}
