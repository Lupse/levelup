import 'package:flutter/material.dart';

class LandingPage1 extends StatelessWidget {
  final PageController controller;

  const LandingPage1({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Element1
      const Positioned(
        right: 0,
        child: Placeholder(
            strokeWidth: 0.5,
            child: SizedBox(
              width: 300,
              height: 300,
            )),
      ),

      // Element2
      const Positioned(
        bottom: 0,
        child: Placeholder(
            strokeWidth: 0.5,
            child: SizedBox(
              width: 250,
              height: 250,
            )),
      ),

      Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Subtitle
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: SizedBox(
                width: 320,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 45.0),
                        child: Placeholder(
                          child: Container(
                            width: 80,
                            height: 80,
                          ),
                        )),
                    const Text(
                      'Level Up',
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Level up yourself to be a better person!',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),

            // Image
            Container(
              width: double.infinity,
              height: 350,
              child: const Placeholder(),
            ),

            // Button
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    const Spacer(),
                    SizedBox(
                        height: double.infinity,
                        width: 200,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.black),
                              foregroundColor:
                                  WidgetStatePropertyAll(Colors.white),
                              shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        bottomLeft: Radius.circular(18))),
                              ),
                            ),
                            onPressed: () {
                              // Pindah ke halaman 2
                              controller.animateToPage(
                                1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Next',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 32,
                                )
                              ],
                            )))
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
