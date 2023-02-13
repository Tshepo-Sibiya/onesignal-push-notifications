import 'package:flutter/material.dart';

import '../models/user.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;
  // UserCard({this.user})

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              user.userId,
            ),
            const SizedBox(height: 6.5,),
            Text(
              user.title,
            ),
            const SizedBox(height: 6.5,),
            Text(
              user.id,
            ),
             const SizedBox(height: 9.0,),
           IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
