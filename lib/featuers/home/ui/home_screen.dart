import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
              width: double.infinity,
              color: Colors.red[400],
              margin: EdgeInsets.fromLTRB(20, 16, 20, 28),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeTopBar()
                ],
              )),
        ));
  }
}
