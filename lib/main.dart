

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/constants.dart';
import 'pages/sign options/sign_in_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WinWithUs());
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
ThemeData myTheme = ThemeData(
  textTheme: GoogleFonts.lalezarTextTheme().copyWith(
    // Update font sizes for specific styles
    displayLarge: GoogleFonts.lalezar(fontSize: 24,fontWeight: FontWeight.bold),
    bodyLarge: GoogleFonts.lalezar(fontSize: 16,fontWeight: FontWeight.normal),
    // Add more style modifications as needed
  ),
  // Add other theme properties if necessary...
);


    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:myTheme,
        home: AnimatedSplashScreen(
          splashIconSize: 300,
          splash: 'assets/images/logo.png',
          backgroundColor: Constants.primaryColor,
          nextScreen: const SignInPage(),
          splashTransition: SplashTransition.scaleTransition,
          duration: 3000,
        ));
  }
}
