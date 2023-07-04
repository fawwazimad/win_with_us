// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:win_with_us/common_widgets/custom_raised_button.dart';

class NotificationsPage extends StatelessWidget
{
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الإشعارات'),
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
                    Icons.notifications_none_sharp,
                    size: 50,
                    color: Colors.white,
                  ),
                  Text(
                    'لا يوجد اشعارات بعد',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ))),
    );
  }


}