import 'package:flutter/material.dart';
import 'package:push_app/main.dart';

export 'main.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: '567',)));
          },
          child: const Text('Go to main'),
        )
      ],
    );
  }
}
