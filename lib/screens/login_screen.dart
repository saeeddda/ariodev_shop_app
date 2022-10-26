import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: textTheme.headline1,
                  ),
                  const SizedBox(height: 100),
                  SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: TextField(
                      decoration: InputDecoration(
                          label: Text(
                            'Email',
                            style: textTheme.caption,
                          ),
                          suffixIcon: const Icon(
                            CupertinoIcons.check_mark,
                            color: Colors.green,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 64,
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Password',
                          style: textTheme.caption,
                        ),
                      ),
                    ),
                  ),
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("LOGIN"))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(child: Text("Or login with social account")),
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
                            ]),
                        child: Image.asset(
                          "assets/icons/google.png",
                          scale: 3.5,
                        ),
                      ),
                      const SizedBox(width: 20),
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
                            ]),
                        child: Image.asset(
                          "assets/icons/facebook.png",
                          scale: 3.5,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
