import 'package:flutter/material.dart';

class SocialAccountOption {
  Widget socialAccountLoginOption(
      BuildContext context, Size size, TextTheme textTheme) {
    return Visibility(
      visible: MediaQuery.of(context).viewInsets.bottom > 0.0 ? false : true,
      child: SizedBox(
        height: size.height / 4.33,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Or login with social account",
              style: textTheme.subtitle1,
            )),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 92,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Color.fromARGB(12, 0, 0, 0),
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/icons/google.png",
                    scale: 3.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget socialAccountSignupOption(
      BuildContext context, Size size, TextTheme textTheme) {
    return Visibility(
      visible: MediaQuery.of(context).viewInsets.bottom > 0.0 ? false : true,
      child: SizedBox(
        height: size.height / 4.33,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Or SignUp with social account",
              style: textTheme.subtitle1,
            )),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 92,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Color.fromARGB(12, 0, 0, 0),
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/icons/google.png",
                    scale: 3.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
