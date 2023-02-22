import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mlindemtoto/Utils/appconstants.dart';

class Smartwatch extends StatelessWidget {
  const Smartwatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConst.mainColor,
        title: Text("Smart Watch"),
      ),
      body: Card(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Image.asset("images/Huaweiband6.jpg"),
              title: Text("HUAWEI BAND 6"),
              
              subtitle: Text("Wear a smartwatch"),
              //onTap: () {
               // Get.to(() => listdevices());
             // }
              ),
               SizedBox(height: 10,),
                ListTile(
              leading: Image.asset("images/applewatch.jpg"),
              title: Text('APPLE WATCH SERIES 3'),
              
              subtitle: Text("Wear a smartwatch"),
              
              ),
              SizedBox(height: 10,),

               ListTile(
              leading: Image.asset("images/smartwatch.png"),
              title: Text("SAMSUNG SMART WATCH"),
              
              subtitle: Text("Wear a smartwatch"),
            
              ),

           
               
    ])));
  }
}