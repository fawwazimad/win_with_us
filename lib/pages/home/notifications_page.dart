
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget
{
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإشعارات'),
        backgroundColor: Colors.redAccent,
        elevation: 0,
        centerTitle: true,
        leading: const BackButton()
      ),
      backgroundColor: Colors.redAccent,
      body: const SafeArea(
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