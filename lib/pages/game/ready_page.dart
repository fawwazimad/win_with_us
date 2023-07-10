
import 'package:flutter/material.dart';
import 'package:win_with_us/common_widgets/custom_raised_button.dart';
//import 'package:styled_text/styled_text.dart';
import 'package:win_with_us/pages/game/game_page.dart';
import '../../common_widgets/logo_box.dart';
import '../../constants/constants.dart';
import '../home/about_us_page.dart';
import '../home/privacy_policy_page.dart';
import '../sign options/sign_in_page.dart';

class ReadyPage extends StatelessWidget {
  const ReadyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: buildContent(context),
    );
  }

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,


        children: [
          const LogoBox(height: 150),
          Column(
            children: [
              Center(child: sampleButton(context,'ابدأ المسابقة',const GamePage())),
              const SizedBox(height: 10,),
              Center(child: sampleButton(context,'عن التطبيق',const AboutUsPage())),
              const SizedBox(height: 10,),
              Center(child: sampleButton(context,'سياسة الخصوصية',const PrivacyPolicyPage() )),
              const SizedBox(height: 10,),
              Center(child: sampleButton(context,'تسجيل الخروج',const SignInPage())),
              const SizedBox(height: 50,),
              const Text('تواصل معنا',style: TextStyle(color: Constants.secondaryColor),),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRaisedButton(color:Constants.secondaryColor , child: SizedBox(width:20,height:20,child: Image.asset('assets/images/Facebook.png')), onPressed: (){} ),
                  const SizedBox(width: 10,),
                  CustomRaisedButton(color:Constants.secondaryColor , child: SizedBox(width:20,height:20,child: Image.asset('assets/images/twitter.png')), onPressed: (){} ),
                  const SizedBox(width: 10,),
                  CustomRaisedButton(color:Constants.secondaryColor , child: SizedBox(width:20,height:20,child: Image.asset('assets/images/google.png')), onPressed: (){} ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  CustomRaisedButton sampleButton(BuildContext context,String text,Widget dest) {
    return CustomRaisedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            fullscreenDialog: true,
            builder: (context) => dest,
          ),
        );
      },
      color: Constants.secondaryColor,
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        child: Text(
          text,
          style: const TextStyle(color: Constants.thirdColor,fontSize: 22),

        ),
      ),
    );


  }


}
