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
          SizedBox(height: 10),
          Expanded(child: SingleChildScrollView(
            child:Column(
              children: [
                Padding(padding: EdgeInsets.all(10),
                child: Text("Incident Stabilization Stabilizing an emergency may involve many different actions including: firefighting, administering medical treatment, rescue, containing a spill of hazardous chemicals or handling a threat or act of violence. When you dial 9-1-1 you expect professionals to respond to your facility. Depending upon the response time and capabilities of public emergency services and the hazards and resources within your facility, you may choose to do more to prepare for these incidents. Regulations may require you to take action before emergency services arrive.If you choose to do nothing more than call for help and evacuate, you should still prepare an emergency plan that includes prompt notification of emergency services, protective actions for life safety and accounting of all employees.\n\nDeveloping the Emergency Plan\nDeveloping an emergency plan begins with an understanding of what can happen. Review your risk assessment. Consider the performance objectives that you established for your program and decide how much you want to invest in planning beyond what is required by regulations. Assess what resources are available for incident stabilization. Consider internal resources and external resources including public emergency services and contractors. Public emergency services include fire departments that may also provide rescue, hazardous materials and emergency medical services. If not provided by your local fire department, these services may be provided by another department, agency or even a private contractor. Reach out to local law enforcement to coordinate planning for security related threats.\n\n Document available resources. Determine whether external resources have the information they would need to handle an emergency. If not, determine what information is required and be sure to document that information in your plan. \nPrepare emergency procedures for foreseeable hazards and threats. Review the list of hazards presented at the bottom of the page.", style: TextStyle(fontSize: 15),),)
              ],
            ) ,
          )),
          SizedBox(height: 10,),
         
        ],
      ),
    );
  }
}