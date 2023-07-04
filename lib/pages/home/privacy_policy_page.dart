// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget
{
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('سياسة الخصوصية'),
         backgroundColor: Colors.redAccent,
         elevation: 0,
         centerTitle: true,
         leading: BackButton()
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