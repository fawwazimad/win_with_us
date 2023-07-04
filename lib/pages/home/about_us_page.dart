// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('عن التطبيق '),
        backgroundColor: Colors.redAccent,
        elevation: 0,
        centerTitle: true,
        leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shadowColor: Colors.transparent,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.redAccent,
      body: SafeArea(
          child: Center(
              child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 50,
            color: Colors.white,
          ),
          Text(
            'لا يوجد معلومات بعد',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ],
      ))),
    );
  }
}
