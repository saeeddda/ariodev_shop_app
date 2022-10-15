import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screen/login_register_screens/components/button_component.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height / 7,
              child: Text(
                "Verification",
                style: textTheme.headline1,
              ),
            ),
            const Text("Please Enter your OTP Code "),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  spacing: 25,
                  direction: Axis.horizontal,
                  children: [
                    _otpTextField(context, true),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Resend Code",
                    style: textTheme.subtitle1,
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    CupertinoIcons.bubble_left,
                    color: Colors.red,
                    size: 16,
                  ),
                ],
              ),
            ),
            ButtonBtn().primaryButton("SEND"),
          ],
        ),
      ),
    ));
  }

  Widget _otpTextField(BuildContext context, bool autoFocus) {
    return Container(
      height: MediaQuery.of(context).size.shortestSide * 0.13,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              offset: Offset(0, 3),
              spreadRadius: 0),
        ],
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: TextField(
          maxLength: 1,
          maxLines: 1,
          autofocus: autoFocus,
          decoration: const InputDecoration(
            counter: Offstage(),
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: const TextStyle(),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
