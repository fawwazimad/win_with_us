import 'package:flutter/material.dart';
import 'package:win_with_us/constants/constants.dart';
import 'package:win_with_us/pages/home/notifications_page.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.primaryColor,
        appBar: AppBar(
          backgroundColor: Constants.primaryColor,
          elevation: 0,
          leading: const BackButton(),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/percent.png',
                              width: 40,
                            ),
                            const Text(
                              'حذف  إجابتين',
                              style: TextStyle(
                                  fontSize: 10, color: Constants.secondaryColor),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "1",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/switch.png',
                              width: 40,
                            ),
                            const Text(
                              'تبديل السؤال',
                              style: TextStyle(
                                  fontSize: 10, color: Constants.secondaryColor),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "2",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      InkWell(
                        onTap: () {} ,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/alert.png',
                              width: 40,
                            ),
                            const Text(
                              'إيقاف مؤقت',
                              style: TextStyle(
                                  fontSize: 10, color: Constants.secondaryColor),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "3",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ]),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const NotificationsPage()));
                },
                icon: const Icon(
                  Icons.notifications,
                  size: 40,
                  color: Constants.secondaryColor,
                ))
          ],
        ),
        body: const Center(
          child: Text(
            'Game Page',
            style: TextStyle(color: Constants.secondaryColor),
          ),
        ));
  }
}
