// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:win_with_us/pages/home/notifications_page.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 0,
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
                            Text(
                              'حذف  إجابتين',
                              style: const TextStyle(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Text(
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
                            Text(
                              'تبديل السؤال',
                              style: const TextStyle(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Text(
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
                            Text(
                              'إيقاف مؤقت',
                              style: const TextStyle(
                                  fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Text(
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
                      MaterialPageRoute(builder: (_) => NotificationsPage()));
                },
                icon: Icon(
                  Icons.notifications,
                  size: 40,
                  color: Colors.white,
                ))
          ],
        ),
        body: Center(
          child: Text(
            'Game Page',
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
