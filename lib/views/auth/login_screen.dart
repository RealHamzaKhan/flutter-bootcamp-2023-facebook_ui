
import 'package:facebook_ui/common/custom_textfield.dart';
import 'package:facebook_ui/common/height_spacer.dart';
import 'package:facebook_ui/views/auth/components/auth_button.dart';
import 'package:facebook_ui/views/auth/signup_screen.dart';
import 'package:facebook_ui/views/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.sizeOf(context).height;
    double width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: width*0.06,vertical: height*0.05),
        child: Column(
          children: [
            heightSpacer(height: height*0.07),
            Image.asset('assets/images/app_logo.png'),
            heightSpacer(height: height*0.1),
            custom_TextFormField(hintText: "Enter Email"),
            heightSpacer(height: height*0.03),
            custom_TextFormField(hintText: "Enter Password",isObsecure: true),
            heightSpacer(height: height*0.05),
            authButton(text: "Login",height: height*0.07,color: Colors.blue,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            }),
            heightSpacer(height: height*0.02),
            const Row(
              children: [
                Expanded(child: Divider()),
                Text("  or  ",),
                Expanded(child: Divider())
              ],
            ),
            heightSpacer(height: height*0.02),
            authButton(text: "Create account",height: height*0.07,color: Colors.green,onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
            }),
            ],
        ),
      ),
    );
  }
}