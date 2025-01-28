import 'package:doc_on_time/featuers/home/ui/widgets/doctors_blue_container.dart';
import 'package:doc_on_time/featuers/home/ui/widgets/home_top_bar.dart';
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
              margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [HomeTopBar(), DoctorsBlueContainer()],
              )),
        ));
  }
}
