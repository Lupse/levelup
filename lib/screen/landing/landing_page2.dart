import 'package:final_project/screen/auth/sign_in/screen/sign_in.dart';
import 'package:final_project/screen/auth/sign_up/screen/sign_up.dart';
import 'package:flutter/material.dart';

class LandingPage2 extends StatelessWidget {
  final PageController controller;

  const LandingPage2({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Element1
      const Positioned(
          child: Placeholder(
        strokeWidth: 0.5,
        child: SizedBox(
          width: double.infinity,
          height: 250,
        ),
      )),

      // Element2
      const Positioned(
          bottom: 0,
          right: 0,
          child: Placeholder(
            strokeWidth: 0.5,
            child: SizedBox(
              width: 350,
              height: 300,
            ),
          )),

      Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo and Title
            const SizedBox(
              width: double.infinity,
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Placeholder(
                    child: SizedBox(
                      width: 80,
                      height: 80,
                    ),
                  ),
                  Text(
                    'Level Up',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // Auth Button
            SizedBox(
              width: double.infinity,
              height: 380,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                elevation: WidgetStatePropertyAll(
                                    12), // Menambahkan shadow
                                shadowColor: WidgetStatePropertyAll(
                                    Colors.black), // Warna bayangan
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
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
                            ))),
                    const SizedBox(height: 28),
                    SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                ),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white),
                                foregroundColor:
                                    WidgetStatePropertyAll(Colors.black),
                                side: WidgetStatePropertyAll(
                                    BorderSide(width: 2))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpPage()));
                            },
                            child: const Text(
                              'SignUp',
                              style: TextStyle(fontSize: 22),
                            ))),
                  ],
                ),
              ),
            ),

            // Button
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    SizedBox(
                        height: double.infinity,
                        width: 80,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.black),
                              foregroundColor:
                                  WidgetStatePropertyAll(Colors.white),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(18),
                                        bottomRight: Radius.circular(18))),
                              ),
                            ),
                            onPressed: () {
                              // Pindah ke halaman 2
                              controller.animateToPage(
                                0,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_left,
                              size: 32,
                            ))),
                    const Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
