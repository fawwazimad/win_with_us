// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:win_with_us/common_widgets/logo_box.dart';

import '../../common_widgets/custom_raised_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _emailFocusNode = FocusNode();

  final FocusNode _passwordFocusNode = FocusNode();

  /*String get _email => _emailController.text;
  String get _password => _passwordController.text;
  */
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

/*
  String get _email => _emailController.text;
  String get _name => _nameController.text;
  String get _password => _passwordController.text;
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التسجيل ',style: TextStyle(color: Colors.black), ),
        backgroundColor:Colors.grey[200],
        elevation: 0,
        centerTitle: true,
        leading: BackButton(color: Colors.black,)
      ),
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
                  const SizedBox(height: 50,),
                  const LogoBox(height: 120),
                  const SizedBox(height: 15),
                  const Text(
                    'أهلا بك !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 25.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'أنشئ حساب جديد',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildNameCard(),
                  const SizedBox(height: 10),
                  buildEmailCard(context),
                  const SizedBox(height: 10),
                  buildPasswordCard(),
                  const SizedBox(height: 20),
                  buttonRegister(),
                  const SizedBox(height: 10),
                  signUpRowChildren(context),
                ])));
  }

  Row signUpRowChildren(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'سجل الدخول هنا',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                ),
              )),
          const Text(
            'هل تملك حساب ؟',
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

  Card buildNameCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: TextField(
          controller: _nameController,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'الاسم',
          ),
          keyboardType: TextInputType.name,
          textInputAction: TextInputAction.next,
        ),
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

  CustomRaisedButton buttonRegister()
  {
    return CustomRaisedButton(
      color: Colors.redAccent,
      child: const Text(
        'تسجيل',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      onPressed: () {},
    );
  }
}
