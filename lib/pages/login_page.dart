// ignore_for_file: library_private_types_in_public_api

import 'package:bjbfest/main_layout.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  var fillColor = const MaterialStatePropertyAll(Colors.white);
  final GlobalKey<FormState> _formKey =
      GlobalKey<FormState>(); // Add GlobalKey for form validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F5F5),
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Row(
          children: [
            Image.asset(
              'assets/images/logobjbfestbiru.png',
              width: 160,
              height: 160,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Form(
            key: _formKey, // Assign GlobalKey to form
            autovalidateMode: AutovalidateMode
                .onUserInteraction, // Trigger validation on user interaction
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome Back,",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 29,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Please log in to your account to continue accessing the features you need.",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      color: Color(0xFF767676),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide:
                                    BorderSide(color: Color(0xffD5D8DE))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 28, horizontal: 22),
                            border: OutlineInputBorder(),
                            filled: true,
                            hintText: "Email",
                            labelText: "Email",
                            fillColor: Colors.white),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                borderSide:
                                    BorderSide(color: Color(0xffD5D8DE))),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 28, horizontal: 22),
                            border: OutlineInputBorder(),
                            filled: true,
                            hintText: "Password",
                            labelText: "Password",
                            fillColor: Colors.white),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                value: _rememberMe,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value!;
                                    fillColor = const MaterialStatePropertyAll(
                                        Color(0xff193D87));
                                  });
                                },
                                checkColor: Colors.white,
                                fillColor: fillColor,
                                side: const BorderSide(
                                  color: Color(0xff193D87),
                                ),
                                activeColor: const Color(0xFF1D4AA7),
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text(
                              "Remember Me",
                              style: TextStyle(
                                color: Color(0xff193D87),
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const MainLayout()),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      surfaceTintColor: Colors.transparent,
                      elevation: 0,
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xff1D4AA7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Let\'s Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 21,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
