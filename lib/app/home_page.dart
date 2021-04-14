import 'package:flutter/material.dart';
import 'package:time_tracker/services/auth.dart';

class HomePage extends StatelessWidget {
  final AuthBase auth;

  const HomePage({Key key, @required this.auth}) : super(key: key);

  void _signOut() async {
    await auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          TextButton(
            onPressed: _signOut,
            child: Text(
              'Logout',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
