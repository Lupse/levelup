import 'package:final_project/screen/auth/sign_up.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 32,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        height: double.infinity,
        child: Stack(children: [
          // Title
          Container(
            padding: const EdgeInsets.only(bottom: 30),
            color: Colors.black,
            height: 250,
            child: const SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Placeholder(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 52),
                  )
                ],
              ),
            ),
          ),

          // Form
          Positioned(
            top: 220,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(32))),
              child: Stack(children: [
                // Element 1
                const Positioned(
                  bottom: 0,
                  child: Placeholder(
                    strokeWidth: 0.5,
                    child: const SizedBox(
                      width: double.infinity,
                      height: 160,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                      children: [
                        // Subtitle
                        const Text(
                          'Lorem Ipsum Dolor sit amet. Lorem Ipsum Dolor sit amet.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),

                        const SizedBox(height: 60),

                        // Username Textfield
                        const TextField(
                            decoration: InputDecoration(
                          label: Text('Username'),
                          labelStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                        )),

                        const SizedBox(height: 22),

                        // Password Textfield
                        const TextField(
                            decoration: InputDecoration(
                          label: Text('Password'),
                          labelStyle: TextStyle(color: Colors.black),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                        )),
                        const SizedBox(height: 22),
                        // Signin Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                  ),
                                  backgroundColor:
                                      WidgetStatePropertyAll(Colors.black),
                                  foregroundColor:
                                      WidgetStatePropertyAll(Colors.white)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignInPage()));
                              },
                              child: const Text(
                                'SignIn',
                                style: TextStyle(fontSize: 22),
                              )),
                        ),
                        const SizedBox(height: 18),
                        const Divider(
                          endIndent: 32,
                          indent: 32,
                          color: Colors.black,
                        ),

                        // Signup Link
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account? ",
                              style: TextStyle(fontSize: 16),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpPage()));
                              },
                              child: const Text('SignUp Now!'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
