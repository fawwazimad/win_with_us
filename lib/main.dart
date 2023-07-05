// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


import 'constants/constants.dart';
import 'pages/sign options/sign_in_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(WinWithUs());
}

class WinWithUs extends StatefulWidget {
  const WinWithUs({super.key});

  @override
  State<WinWithUs> createState() => _WinWithUsState();
}

class _WinWithUsState extends State<WinWithUs> {
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState(){
    super.initState();
    audioPlayer.play(AssetSource('audio/splash_audio.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splashIconSize: 300,
          splash: 'assets/images/logo.png',
          backgroundColor: Constants.primaryColor,
          nextScreen: SignInPage(),
          splashTransition: SplashTransition.scaleTransition,
          duration: 3000,
        ));
  }
}
