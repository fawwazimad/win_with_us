
import 'package:flutter/material.dart';
import 'package:win_with_us/common_widgets/custom_raised_button.dart';
//import 'package:styled_text/styled_text.dart';
import 'package:win_with_us/pages/game/game_page.dart';
import '../../common_widgets/logo_box.dart';
import '../home/about_us_page.dart';
import '../home/privacy_policy_page.dart';
import '../sign options/sign_in_page.dart';

class ReadyPage extends StatelessWidget {
  const ReadyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
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
          //Center(child: rulesText()),
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
              const Text('تواصل معنا',style: TextStyle(color: Colors.white),),
              const SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRaisedButton(color:Colors.white , child: SizedBox(width:20,height:20,child: Image.asset('assets/images/Facebook.png')), onPressed: (){} ),
                  const SizedBox(width: 10,),
                  CustomRaisedButton(color:Colors.white , child: SizedBox(width:20,height:20,child: Image.asset('assets/images/twitter.png')), onPressed: (){} ),
                  const SizedBox(width: 10,),
                  CustomRaisedButton(color:Colors.white , child: SizedBox(width:20,height:20,child: Image.asset('assets/images/google.png')), onPressed: (){} ),
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
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black,fontSize: 22),

        ),
      ),
    );


  }

/*  Center rulesText() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: StyledText(
              text: '<size><color=#FF0000><bold>مرحبًا بك!</bold></color></size>\n'
                  '<size><color=#FF0000>تفضل بالاطلاع على القواعد التالية:</color></size>\n'
                  '<size><color=#FF0000>1. المسابقة مكونة من 8 أسئلة تتدرج بالصعوبة.</color></size>\n'
                  '<size><color=#008000>2. لديك 3 وسائل مساعدة يمكنك استخدامها.</color></size>\n'
                  '<size><color=#0000FF>3. تذكر الاجابة على كل سؤال قبل نهاية الوقت.</color></size>\n',
              tags: {
                'bold': StyledTextTag(
                    style: TextStyle(fontWeight: FontWeight.bold,height: 2)),
                'color': StyledTextTag(style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                'size': StyledTextTag(style: TextStyle(fontSize: 18)),
              },
            ),
          ),
        ),
      ));
  }
*/
}
