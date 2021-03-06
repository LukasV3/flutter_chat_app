import 'package:flutter/material.dart';
import 'package:flutter_chat_app/services/auth.dart';
import 'package:flutter_chat_app/views/signin.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Messenger Clone'),
          actions: [
            InkWell(
              onTap: () {
                AuthMethods().signOut().then((s) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                });
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.exit_to_app)),
            )
          ],
        ),
        body: Container(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid)),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Username"),
                  )),
                  Icon(Icons.search)
                ],
              ),
            )
          ],
        )));
  }
}
