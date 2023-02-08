// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:mlindemtoto/widgetss/signup.dart';


import '../Controllers/auth_controller.dart';
import '../Controllers/authcontroller_alt.dart';
import '../Utils/appconstants.dart';
import '../screens/dashboard.dart';

import '../utils/utils.dart';
import 'custombutton.dart';
import 'customfield.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 65),
        width: Get.size.width,
        height: Get.size.height,
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: Get.size.height * .03),

                SizedBox(height: 25),
                Row(
                  children: [
                    Text("Create an Account ",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(height: 30),

                //Name field
                CustomTextField(
                    title: "Name",
                    iconData: Icons.person,
                    name: "name",
                    textInputType: TextInputType.text),
                SizedBox(height: 12),
                //Email field
                CustomTextField(
                    title: "Email",
                    iconData: Icons.email_sharp,
                    name: "email",
                    textInputType: TextInputType.emailAddress),
                SizedBox(height: 12),

                //Phone field
                CustomTextField(
                    title: "Phone",
                    iconData: Icons.phone,
                    name: "phone",
                    textInputType: TextInputType.phone),
                SizedBox(height: 12),

                //Location field
                CustomTextField(
                    title: "Town",
                    iconData: Icons.account_balance_sharp,
                    name: "town",
                    textInputType: TextInputType.text),
                SizedBox(height: 12),
                //Password field
                CustomTextField(
                    title: "Password",
                    iconData: Icons.lock_sharp,
                    name: "password",
                    obscure: true,
                    textInputType: TextInputType.text),

                SizedBox(height: 25),
                CustomButton(
                  onPressed: () {
                    _signupUser();
                  },
                  title: "Register",
                ),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {
                      Get.to(()=>Login());
                    },
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Already have an account?'),
                          TextSpan(
                              text: ' Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppConst.mainColor,
                              )),
                        ],
                      ),
                    )),
                SizedBox(height: 25),
                Divider()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _signupUser() async {
    FocusScope.of(context).unfocus();
    var validate = _formKey.currentState!.validate();
    if (validate) {
      _formKey.currentState!.save();
      var fields = _formKey.currentState!.value;
      // print(fields.toString());
      Utils.showLoading();
      var loggedIn = await AuthController.to.register(fields["name"],
          fields["email"], fields["phone"], fields["town"], fields["password"]);
      SmartDialog.dismiss();

      if(loggedIn){
        Get.offUntil(GetPageRoute(page: () => const Dashboard()), (route) => false);
        Get.to(()=>Dashboard());
      }
    }
  }
}














// ignore_for_file: prefer_const_constructors

/*import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
}*/
