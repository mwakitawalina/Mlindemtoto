import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class managementstrategies extends StatelessWidget {
  const managementstrategies({super.key});

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
              Image(image: AssetImage("images/crowd.jpg",),
              width: Get.width * 5,
              height: 200,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.6),
              colorBlendMode: BlendMode.darken,),
              Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Text("Crowd Management Strategies",
            style: TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold),),
          ))
            ],)],
      ),
    );
  }
}