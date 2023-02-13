import 'package:flutter/material.dart';
import 'package:push_app/shared/card.dart';
import 'models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

export 'main.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  // void getData() async {
  //   var response =
  //       await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  //   print(response.body);
  // }

  List<User> data = [];

  // ignore: non_constant_identifier_names

  @override
  void initState() {
    super.initState();
  }

  Future<void> updateAuthData(bool val) async {
    //  var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    //  print(response.body);
    var url =
        Uri.parse("http://10.0.2.2:3000/api/push-notification/updateAuth");
    final response = await http.patch(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "portfolioId": "999",
        "authorised": val,
      }),
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Authorization'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Authorize transaction'),
            Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    updateAuthData(true);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const ContactScreen()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  child: const Text('Approve'),
                ),
                ElevatedButton(
                  onPressed: () {
                    updateAuthData(false);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const ContactScreen()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: const Text('Decline'),
                ),
              ],
            ),
            Column(
              children: data.map((e) => UserCard(user: e)).toList(),
            ),
            // Column(
            //   children: const <Widget>[
            //     Center(
            //       child: SpinKitCircle(
            //         color: Colors.red,
            //         size: 100.0,
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ));
}
