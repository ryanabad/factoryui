import 'package:flutter/material.dart';
import 'activation_page.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});


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
                  const Text('Enter your mobile number to activate your account'),
                  const SizedBox(height: 20,),

                  Row(

                    children: [
                    Image.asset('images/malaysia.png'),
                      const Text('+60'),
                      const Expanded(child: TextField(
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
                          MaterialPageRoute(builder: (context) => const ActivationPage()),
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
