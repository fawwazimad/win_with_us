
import 'package:flutter/material.dart';
import 'package:win_with_us/common_widgets/logo_box.dart';

import '../../common_widgets/custom_raised_button.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' نسيت كلمة السر ',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        centerTitle: true,
        leading: const BackButton(color: Colors.black,)
      ),
      body: _buildContent(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            const LogoBox(height: 150),
            const SizedBox(height: 50,),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.email,
                  size: 80,
                  color: Colors.redAccent,
                ),
                SizedBox(height: 20),
                Text(
                  'سوف تصلك رسالة بها رابط لاعادة تعيين كلمة السر',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
                const SizedBox(height: 20),
                buildEmailCard(context),
                const SizedBox(height: 20),
                resetPasswordButton()
              ],
            ),

      ),
    );
  }

  Card buildEmailCard(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: TextField(
          controller: _emailController,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'البريد الالكتروني',
          ),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          focusNode: _emailFocusNode,
        ),
      ),
    );
  }

  Padding resetPasswordButton() {
    return Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: CustomRaisedButton(
          color:Colors.redAccent,
            child: const Text('ارسال'),
            onPressed: () async {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('تم ارسال رابط لاعادة تعيين كلمة المرور ، في حال لم تجد الرسالة قم بتفقد مجلد البريد العشوائي')));
              Navigator.pop(context);
            }));
  }
}
