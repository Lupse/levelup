import 'package:final_project/screen/auth/sign_in/screen/sign_in.dart';
import 'package:final_project/screen/auth/sign_up/controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool visible = true;
  bool confvisible = true;

  @override
  Widget build(BuildContext context) {
    final signUpKey = GlobalKey<FormState>();
    final SignUpController signUpController = Get.find();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              toolbarHeight: 32,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            body: Form(
              key: signUpKey,
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
                            'Sign Up',
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

                              const SizedBox(height: 40),

                              // Email Textfield
                              TextFormField(
                                  controller: signUpController.emailController,
                                  focusNode: signUpController.emailFocus,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Email can't be empty!";
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    label: Text('Email'),
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
                              // Username Textfield
                              TextFormField(
                                  controller:
                                      signUpController.usernameController,
                                  focusNode: signUpController.usernameFocus,
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
                                        signUpController.passwordController,
                                    focusNode: signUpController.passwordFocus,
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
                                          icon: visible
                                              ? Icon(Icons.visibility_off)
                                              : Icon(Icons.visibility)),
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
                              // Confirm Password Textfield
                              SizedBox(
                                height: 62,
                                child: TextFormField(
                                    obscureText: confvisible,
                                    controller: signUpController
                                        .confirmPasswordController,
                                    focusNode:
                                        signUpController.confirmPasswordFocus,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Confirm password can't be empty!";
                                      } else if (value !=
                                          signUpController
                                              .passwordController.text) {
                                        return "Password doesn't match!";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      suffix: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              confvisible = !confvisible;
                                            });
                                          },
                                          icon: confvisible
                                              ? Icon(Icons.visibility_off)
                                              : Icon(Icons.visibility)),
                                      label: const Text('Confirm Password'),
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

                              // Signup Button
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
                                      if (signUpKey.currentState!.validate()) {
                                        signUpController.signUp(
                                            signUpController
                                                .emailController.text
                                                .trim(),
                                            signUpController
                                                .usernameController.text
                                                .trim(),
                                            signUpController
                                                .confirmPasswordController.text
                                                .trim());
                                      }
                                    },
                                    child: const Text(
                                      'Sign Up',
                                      style: TextStyle(fontSize: 22),
                                    )),
                              ),
                              const SizedBox(height: 18),
                              const Divider(
                                endIndent: 32,
                                indent: 32,
                                color: Colors.black,
                              ),

                              // Signin Link
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Already have an account? ",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignInPage()));
                                    },
                                    child: const Text('SignIn Now!'),
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
          Obx(() {
            if (signUpController.authRepo.isLoading.value) {
              return Container(
                  color: Colors.black.withOpacity(0.5),
                  child: const Center(child: CircularProgressIndicator()));
            } else {
              return const SizedBox.shrink();
            }
          })
        ],
      ),
    );
  }
}
