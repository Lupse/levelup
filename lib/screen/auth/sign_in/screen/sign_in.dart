import 'package:final_project/screen/auth/sign_in/controller/sign_in_controller.dart';
import 'package:final_project/screen/auth/sign_up/screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    final SignInController signInController = Get.find();
    final signInKey = GlobalKey<FormState>();

    return Stack(
      children: [
        GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 32,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            body: Form(
              key: signInKey,
              child: SizedBox(
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
                      child: Padding(
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
                              TextFormField(
                                  controller:
                                      signInController.usernameController,
                                  focusNode: signInController.usernameFocus,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Username can't be empty!";
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    label: Text('Username'),
                                    labelStyle: TextStyle(color: Colors.black),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 2.0,
                                      ),
                                    ),
                                  )),

                              const SizedBox(height: 22),

                              // Password Textfield
                              SizedBox(
                                height: 62,
                                child: TextFormField(
                                    obscureText: visible,
                                    controller:
                                        signInController.passwordController,
                                    focusNode: signInController.passwordFocus,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Password can't be empty!";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      suffix: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              visible = !visible;
                                            });
                                          },
                                          icon: Icon(visible
                                              ? Icons.visibility_off
                                              : Icons.visibility)),
                                      label: const Text('Password'),
                                      labelStyle:
                                          const TextStyle(color: Colors.black),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0,
                                        ),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0,
                                        ),
                                      ),
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 2.0,
                                        ),
                                      ),
                                    )),
                              ),
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
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.black),
                                        foregroundColor: WidgetStatePropertyAll(
                                            Colors.white)),
                                    onPressed: () {
                                      if (signInKey.currentState!.validate()) {
                                        signInController.signIn(
                                            signInController
                                                .usernameController.text
                                                .trim(),
                                            signInController
                                                .passwordController.text
                                                .trim());
                                      }
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
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
        Obx(() {
          if (signInController.authRepo.isLoading.value) {
            return Container(
                color: Colors.black.withOpacity(0.5),
                child: const Center(child: CircularProgressIndicator()));
          } else {
            return const SizedBox.shrink();
          }
        })
      ],
    );
  }
}
