// widgets/profile_app_bar.dart

import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 4,
      title: Center(
        child: Image.asset(
          'assets/logito.png',
          height: 40,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Felix%28Stray_kids%29_221018.jpg/640px-Felix%28Stray_kids%29_221018.jpg'),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            print('Notificaciones');
          },
        ),
      ],
    );
  }
}
