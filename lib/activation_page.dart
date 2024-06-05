import 'package:factoryui/main.dart';
import 'package:flutter/material.dart';

class ActivationPage extends StatelessWidget {

  const ActivationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40.0),
            Image.asset('images/upm_logo.png'),
            const SizedBox(height: 40.0),
            const Text(
              'Welcome!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
            ),
            Container(

                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.pink[50],

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Enter the activation code you received via SMS'),
                    const SizedBox(height: 30,),
                    const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'OTP',
                    ),
                    ),

                    const SizedBox(height: 40,),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MainScreen()),
                        );
                      },
                      child: const Text('Go to Activation Page'),
                    ),


                  ],)
            )
          ],
        ),
      ),
    );
  }
}
