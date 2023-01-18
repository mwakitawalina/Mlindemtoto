// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:garage/controllers/auth_controller.dart';
//import 'package:garage/utils/utils.dart';
import 'package:get/get.dart';

import '../Controllers/auth_controller.dart';
import '../utils/utils.dart';
import 'login.dart';


class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _fullNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _repeatPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: "Full Name"),
              controller: _fullNameController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "Email"),
              controller: _emailController,
              obscureText: false,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "Phone"),
              controller: _phoneController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "Password"),
              controller: _passwordController,
              obscureText: true,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "Repeat Password"),
              controller: _repeatPasswordController,
             obscureText: true,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
              onPressed: () async {
                if (_emailController.text.trim().isEmpty ||
                    !_emailController.text.trim().isEmail) {
                  Utils.showError("Please Enter valid email!");
                } else if (_passwordController.text.trim().isEmpty ||
                    _fullNameController.text.trim().isEmpty ||
                    _emailController.text.trim().isEmpty) {
                  Utils.showError("No field should be empty!");
                }
                else if(_passwordController.text.trim()!= _repeatPasswordController.text.trim()){
                  Utils.showError("Password mismatch");
                }
                  
                 else {
                   
                  AuthController.to.register(
                      _fullNameController.text.trim(),
                      _emailController.text.trim(),
                      _phoneController.text.trim(),
                      _passwordController.text.trim(),
                      _repeatPasswordController.text.trim()
                      );
                }
              },
              child: const Text("Sign Up"),
            ),
            SizedBox(
              height: 20,
            ),
            Text.rich(
                // ignore: prefer_const_literals_to_create_immutables
                TextSpan(
                    text: 'Already have an account? ',
                    children: <InlineSpan>[
                  TextSpan(
                      text: 'Login',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => Login());
                        })
                ])),
          ],
        ),
      ),
    );
  }
}
