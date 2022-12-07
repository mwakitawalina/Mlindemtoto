import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'signup.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//implementing splashscreen
   @override
   void initState() {
     super.initState();
    Timer(Duration(seconds: 20), () => Get.to(() => SignUp()));
    super.initState();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      
      body: Container(
        padding: EdgeInsets.all(20),
        //width: Get.width,
        //height: Get.height,
        
        
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.all(Radius.circular(6.0)),
          image: DecorationImage(
            image: AssetImage("images/children.png", ),

             
            //fit: BoxFit.cover,
              //colorFilter: ColorFilter.mode(
                 // Colors.black.withOpacity(0.5), BlendMode.darken)),
        ))));
        /*body: ParallaxStack(
        resetOnExit: true,
        useLocalPosition:true,
        referencePosition: 0.6,
        dragCurve : Curves.easeIn,
        resetCurve: Curves.bounceOut,
        layers: [
          ParallaxLayer(
            yRotation: 2.0,
            xRotation: 0.80,
            xOffset: 90,
            yOffset: 80,

            child: Center(
              child: Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width:  MediaQuery.of(context).size.width*0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/children.png",),
                      Image.asset("assets/design.jpg"),
                    ],
                  )),
            ),)]));
            
            }}*//*child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
               "Mlinde Mtoto",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                 fontSize: 26),
             ),
             SizedBox(
              height: 20,
             ),
            Text(
             "Your child's safety is our priority",
             textAlign: TextAlign.center,
              style: TextStyle(
                 color: Colors.white70,
                  fontWeight: FontWeight.bold,
                 fontSize: 18),
            ),
            //TOP SECTION
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'E-Mail',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.call,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      //Validator
                    },
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'E-Mail',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.call,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value) {
                      //Validator
                    },
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [Text("Terms and conditions")],
            )
          ],
        ),
      ),
    );*/
  }
}