import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/auth_controller.dart';
//import '../Controllers/authcontroller_alt.dart';
import '../Utils/appconstants.dart';
import '../widgetss/login.dart';
import 'dashboard.dart';




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
        const Duration(minutes: 2),
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
      backgroundColor: AppConst.mainColor ,
      body: Center(
        child:Text("MlindeMtoto",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white), )
        //child: Image.asset('images/bg.png'),
      ),
    );
  }
}