
import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget
{
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: const Text('سياسة الخصوصية'),
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