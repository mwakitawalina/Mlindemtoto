import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:mlindemtoto/Utils/appconstants.dart';
import 'package:mlindemtoto/screens/listdevices.dart';

class Devices extends StatelessWidget {
  const Devices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConst.mainColor,
        title: Text("Devices"),),
      body: Card(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Image.asset("images/smartwatch.png"),
              title: Text("Add"),
              
              subtitle: Text("Link your device here"),
              //onTap: () {
               // Get.to(() => listdevices());
             // }
              ),
               SizedBox(height: 10,),
            TextButton(
              onPressed: () { 
                Get.to(() => listdevices(device: '',));
                
               } ,
               child: RichText(
                text: TextSpan(
                              text: ' Add',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppConst.mainColor,
                              )),
           
            ),
            ),

            ],
            ),
        ),
      
    );
  }
}