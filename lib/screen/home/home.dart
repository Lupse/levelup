import 'package:final_project/screen/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = Get.find();
  final PageController _pageController = PageController();
  // ignore: unused_field
  int _currentIndex = 0;

  void _goToPage(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
          child: Row(
            children: [
              // News BotNav
              Expanded(
                  child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        _goToPage(0);
                      },
                      child: Center(
                          child: Stack(children: [
                        Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: _currentIndex == 0
                                    ? const Color.fromARGB(52, 255, 255, 255)
                                    : const Color.fromARGB(0, 255, 255, 255),
                                shape: BoxShape.circle),
                          ),
                        ),
                        const Center(
                          child: Icon(
                            Icons.newspaper,
                            color: Colors.white,
                          ),
                        ),
                      ])))),

              // Note BotNav
              Expanded(
                  child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        _goToPage(1);
                      },
                      child: Center(
                          child: Stack(children: [
                        Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: _currentIndex == 1
                                    ? const Color.fromARGB(52, 255, 255, 255)
                                    : const Color.fromARGB(0, 255, 255, 255),
                                shape: BoxShape.circle),
                          ),
                        ),
                        const Center(
                          child: Icon(
                            Icons.note,
                            color: Colors.white,
                          ),
                        ),
                      ])))),

              // ToDo BotNav
              Expanded(
                  child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        _goToPage(2);
                      },
                      child: Center(
                          child: Stack(children: [
                        Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: _currentIndex == 2
                                    ? const Color.fromARGB(52, 255, 255, 255)
                                    : const Color.fromARGB(0, 255, 255, 255),
                                shape: BoxShape.circle),
                          ),
                        ),
                        const Center(
                          child: Icon(
                            Icons.checklist,
                            color: Colors.white,
                          ),
                        ),
                      ])))),

              // Setting BotNav
              Expanded(
                  child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        _goToPage(3);
                      },
                      child: Center(
                          child: Stack(children: [
                        Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: _currentIndex == 3
                                    ? const Color.fromARGB(52, 255, 255, 255)
                                    : const Color.fromARGB(0, 255, 255, 255),
                                shape: BoxShape.circle),
                          ),
                        ),
                        const Center(
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                        ),
                      ])))),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          Placeholder(
            color: Colors.red,
            child: Center(
                child: ElevatedButton(
              onPressed: () {
                homeController.logout();
              },
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red)),
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            )),
          ),
          const Placeholder(
            color: Colors.green,
          ),
          const Placeholder(
            color: Colors.blue,
          ),
          const Placeholder(
            color: Colors.amberAccent,
          ),
        ],
      ),
    );
  }
}
