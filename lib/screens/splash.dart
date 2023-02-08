import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/auth_controller.dart';
import '../Controllers/authcontroller_alt.dart';
import '../widgetss/login.dart';
import 'dashboard.dart';
//import 'package:jihusishe/frontend/screens/dashboard.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        ()  {
          if(AuthController.to.firebaseUser.value!=null){
            Get.offAll(()=>const Dashboard());
          }else{
            Get.offAll(()=>const Login());
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: Center(
        child: Image.asset('images/children.png'),
      ),
    );
  }
}