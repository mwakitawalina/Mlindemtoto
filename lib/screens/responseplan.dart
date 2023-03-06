import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Responseplan extends StatelessWidget {
  const Responseplan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image(image: AssetImage("images/emergencyplan.jpg"),
              width: Get.width,
              height: 200,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.6),
              colorBlendMode: BlendMode.darken,),
               Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Text("Emergency Response Plan",
            style: TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold),),
          ))
            ],
          ),
         
        ],
      ),
    );
  }
}