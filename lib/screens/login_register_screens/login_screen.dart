import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/screens/login_register_screens/components/button_component.dart';
import 'package:shop_app/screens/login_register_screens/components/social_account_option.dart';
import 'package:shop_app/screens/login_register_screens/components/textfield_component.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: DefaultLightColor.backgroundColor,
        appBar: AppBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: size.height / 7,
                  child: Text(
                    "Login",
                    style: textTheme.headline1,
                  ),
                ),
                CustomTextField().customTextField('Email', false, textTheme),
                CustomTextField().customTextField('Password', true, textTheme),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Forgot your password?"),
                      SizedBox(width: 5),
                      Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.red,
                        size: 16,
                      ),
                    ],
                  ),
                ),
                ButtonBtn().primaryButton("LOGIN"),
                SocialAccountOption()
                    .socialAccountLoginOption(context, size, textTheme),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
