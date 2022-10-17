import 'package:flutter/material.dart';
import 'package:shop_app/config/default_colors.dart';
import 'package:shop_app/screens/login_register_screens/components/button_component.dart';
import 'package:shop_app/screens/login_register_screens/components/textfield_component.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                    "Forget password",
                    style: textTheme.headline1,
                  ),
                ),
                Text(
                  "Please, enter your email address. You will receive a link to create a new password via email.",
                  style: textTheme.subtitle1,
                ),
                const SizedBox(height: 40),
                CustomTextField().customTextField('Email', false, textTheme),
                const SizedBox(height: 40),
                ButtonBtn().primaryButton("SEND"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
