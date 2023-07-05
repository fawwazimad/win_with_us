
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class NotificationsPage extends StatelessWidget
{
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإشعارات'),
        backgroundColor: Constants.primaryColor,
        elevation: 0,
        centerTitle: true,
        leading: const BackButton()
      ),
      backgroundColor: Constants.primaryColor,
      body: const SafeArea(
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_none_sharp,
                    size: 50,
                    color: Constants.secondaryColor,
                  ),
                  Text(
                    'لا يوجد اشعارات بعد',
                    style: TextStyle(color: Constants.secondaryColor, fontSize: 30),
                  ),
                ],
              ))),
    );
  }


}