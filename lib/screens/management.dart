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
            ],),
            SizedBox(height: 15,),
            Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "  CROWD MANAGEMENT STRATEGIES \n 1.Assign adult supervisors: Ensure that there are enough adults present to supervise the children in the crowded place. The adult supervisors should be responsible for keeping a close eye on the children and ensuring that they do not wander off or become lost. \n2.	Use designated areas: Designate a specific area for families with young children. This area should be away from the main crowd and should have enough space for children to move around freely. This area can also be used as a meeting point for families if they become separated.\n3.	Establish rules: Establish clear rules for children in crowded places, such as staying close to their adult supervisors and not wandering off. Make sure the children understand the consequences of not following the rules.\n4.	Use wristbands or identification tags: Provide children with wristbands or identification tags with their name, contact information, and any relevant medical information. This can help in reuniting children with their caregivers in case they become lost.\n5.	Keep children engaged: Keep children engaged in activities or games to reduce the risk of boredom, which can lead to wandering off. This can include bringing books, toys, or games to the crowded place.\n6.	Be prepared for emergencies: Have an emergency plan in place in case a child becomes lost or separated from their adult supervisors. This plan should include a designated meeting point, contact information for local authorities, and procedures for locating and reuniting children with their caregivers.\n7.	Provide training: Provide training to the adult supervisors on crowd management strategies and how to handle emergency situations. Make sure they understand their roles and responsibilities and are prepared to handle any situation that may arise.",
                      style: TextStyle(fontSize: 15),
                    )),
              ],
            ),
          )),
          SizedBox(
            height: 10,
          ),
            ],
            
      ),
    );
  }
}