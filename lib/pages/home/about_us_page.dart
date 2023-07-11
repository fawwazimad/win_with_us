import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('عن التطبيق '),
        backgroundColor: Constants.primaryColor,
        elevation: 0,
        centerTitle: true,
        leading: const BackButton(),
      ),
      backgroundColor: Constants.primaryColor,
      body: const SafeArea(
          child: Center(
              child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 50,
            color: Constants.secondaryColor,
          ),
          Text(
            'لا يوجد معلومات بعد',
            style: TextStyle(color: Constants.secondaryColor, fontSize: 30),
          ),
        ],
      ))),
    );
  }
}
