// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:win_with_us/common_widgets/custom_raised_button.dart';
import 'package:win_with_us/pages/game/game_page.dart';
import 'package:win_with_us/pages/game/ready_page.dart';

import '../../common_widgets/logo_box.dart';
import 'forget_password_page.dart';
import 'sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  /*String get _email => _emailController.text;
  String get _password => _passwordController.text;
  */

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildContent(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 50,),
              LogoBox(height: 120,),
              welcomeBackText(),
              const SizedBox(height: 10),
              logInToYourAccountText(),
              const SizedBox(height: 10),
              buildEmailCard(context),
              const SizedBox(height: 10),
              buildPasswordCard(),
              const SizedBox(height: 15),
              signInButton(),
              const SizedBox(height: 20),
              forgetPasswordText(),
              const SizedBox(height: 20),
              signUpRowChildren(context),
              const SizedBox(height: 20),
              tryOnceButton()
            ],
          )),
    );
  }



  Text welcomeBackText() {
    return const Text(
      '!أهلا بك',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black45,
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text logInToYourAccountText() {
    return const Text(
      'سجل الدخول الى حسابك',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black45,
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  void _emailEditingComplete(BuildContext context) {
    FocusScope.of(context).requestFocus(_passwordFocusNode);
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
          onEditingComplete: () {
            _emailEditingComplete(context);
          },
        ),
      ),
    );
  }

  Card buildPasswordCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: TextField(
          controller: _passwordController,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'كلمة السر',
          ),
          obscureText: true,
          focusNode: _passwordFocusNode,
        ),
      ),
    );
  }

  CustomRaisedButton signInButton() {
    return CustomRaisedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            fullscreenDialog: true,
            builder: (context) => ReadyPage(),
          ),
        );
      },
      color: Colors.redAccent,
      child: const Text(
        'تسجيل الدخول',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
    );
  }

  Row signUpRowChildren(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [

          GestureDetector(
              onTap: () => _signUpButton(context),
              child: const Text(
                ' أنشئ حساب هنا',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.underline),
              )),
          const Text(
            '  لا تملك حساب ؟',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      );
  }

  void _signUpButton(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => SignUpPage(),
      ),
    );
  }

  GestureDetector forgetPasswordText() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              fullscreenDialog: true,
              builder: (context) => const ForgetPasswordPage()));
        },
        child: const Text(
          'هل نسيت كلمة السر ؟',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.blue,
              fontSize: 15.0,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.underline),
        ));
  }

  CustomRaisedButton tryOnceButton() {
    return CustomRaisedButton(onPressed: (){
      Navigator.of(context).push(
          MaterialPageRoute<void>(
          fullscreenDialog: true,
          builder: (context) => GamePage()));
    },
        color: Colors.redAccent,
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.one_x_mobiledata),
        Text(
          'تجربة لمرة واحدة',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),

      ],
    ));
  }
}
