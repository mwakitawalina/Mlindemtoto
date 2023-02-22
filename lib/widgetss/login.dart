// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';

import '../Controllers/auth_controller.dart';
import '../Controllers/authcontroller_alt.dart';
import '../Utils/appconstants.dart';
import '../Utils/utils.dart';
import '../screens/dashboard.dart';

import 'custombutton.dart';
import 'customfield.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _formKey2 = GlobalKey<FormBuilderState>();

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
                Text("Welcome Back!",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.black87)),
                SizedBox(height: 25),
                //Email field
                CustomTextField(
                    title: "Email",
                    iconData: Icons.email_sharp,
                    name: "email",
                    textInputType: TextInputType.emailAddress),
                SizedBox(height: 12),
                //Password field
                CustomTextField(
                    title: "Password",
                    iconData: Icons.lock_sharp,
                    name: "password",
                    obscure: true,
                    textInputType: TextInputType.text),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                           _showRequestPasswordDialog();
                        },
                        child: Text("Forgot Password?",
                            style: TextStyle(color: AppConst.secColor))),
                  ],
                ),
                SizedBox(height: 25),
                CustomButton(
                  onPressed: _loginUser,
                  title: "Login",
                ),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {
                      Get.to(() => Signup());
                    },
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Don\'t have an account?'),
                          TextSpan(
                              text: ' Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppConst.mainColor,
                              )),
                        ],
                      ),
                    )),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _loginUser() async {
    FocusScope.of(context).unfocus();
    var validate = _formKey.currentState!.validate();
    if (validate) {
      _formKey.currentState!.save();
      var fields = _formKey.currentState!.value;
      Utils.showLoading();
      var loggedIn =
          await AuthController.to.login(fields["email"], fields["password"]);
      SmartDialog.dismiss();

      if(loggedIn){
        Get.offUntil(GetPageRoute(page: () => const Dashboard()), (route) => false);
        Get.to(()=>Dashboard());
      }
    }
  }

  void _showRequestPasswordDialog() {
    SmartDialog.show(builder: (context) {
      return SafeArea(
        child: Container(
          color: Colors.white,
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(

                  color: Color.fromARGB(255, 64, 46, 22),
                  child: ListTile(
                      contentPadding: const EdgeInsets.only(left: 20,right:0,top: 5,bottom: 5),
                      tileColor: const Color.fromRGBO(22, 29, 64, 1),
                      trailing: IconButton(onPressed: (){
                        SmartDialog.dismiss();
                      }, icon: const Icon(Icons.close,color: Colors.white,)),
                      title:const Text("Password Reset", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                      subtitle: const Text("Enter Email below", style: TextStyle(color: Colors.white),),
                    )
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: FormBuilder(
                    key: _formKey2,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 30,),
                        FormBuilderTextField(
                          name: 'email',
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            labelText:
                            'Email',
                          ),
                          // onChanged: _onChanged,
                          // valueTransformer: (text) => num.tryParse(text),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            FormBuilderValidators.email()
                          ]),
                          keyboardType: TextInputType.text,
                        ),

                        const SizedBox(height: 40,),
                        CustomButton(
                          onPressed: () {
                            _sendPasswordReset(_formKey2.currentState);
                          },
                          title: "Send Password Reset Email",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },);

  }
}

Future<void> _sendPasswordReset(FormBuilderState? currentState) async {
  if(currentState!=null){
    currentState.save();
    print(currentState.value);
  }
  if(currentState==null || !currentState.isValid){
    //Utils.showModalMessage(message:"Entered data is invalid or fields are empty!",color: AppConst.error);
    Utils.showError("Entered data is invalid or fields are empty!");
    return;
  }

  var email = currentState.value["email"];
  //await AuthController.to.sendPasswordResetEmail(email);

  SmartDialog.dismiss();

}
















/*import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mlindemtoto/widgetss/signup.dart';

import '../Controllers/auth_controller.dart';
import '../utils/utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: "Email"),
              controller: _emailController,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "Password"),
              controller: _passwordController,
              obscureText: false,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
              onPressed: () async {
                if (_emailController.text.trim().isEmpty ||
                    !_emailController.text.trim().isEmail) {
                  Utils.showError("Please Enter valid email!");
                } else if (_passwordController.text.trim().isEmpty) {
                  Utils.showError("No field should be empty!");
                } else {
                  await AuthController.to.login(_emailController.text.trim(),
                      _passwordController.text.trim());
                }
              },
              child: const Text("Sign In"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text.rich(
                // ignore: prefer_const_literals_to_create_immutables
                TextSpan(
                    text: 'Don\'t have an account? ',
                    children: <InlineSpan>[
                  TextSpan(
                      text: 'Sign Up',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.to(() => Signup());
                        })
                ])),
          ],
        ),
      ),
    );
  }
}*/
