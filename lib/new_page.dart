import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'activation_page.dart';

class NewPage extends StatelessWidget {

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
                  Text('Enter your mobiel number to activate your account'),
                  SizedBox(height: 20,),

                  Row(

                    children: [
                    Image.asset('images/malaysia.png'),
                      Text('+60'),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your mobile number',
                        ),
                      ))


                  ],),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ActivationPage()),
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
