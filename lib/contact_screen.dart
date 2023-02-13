import 'package:flutter/material.dart';
import 'package:push_app/main.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact screen '),
      ),
      body: Center(
        child: Column(
          
          // ignore: prefer_const_literals_to_create_immutables
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Hellow conatct screen'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                ),
              },
              child: const Text('Return to main screen'),
            ),
            const SpinKitDancingSquare(color: Colors.green, size: 100.0,)
          ],
        ),
      ),
    );
  }
}
