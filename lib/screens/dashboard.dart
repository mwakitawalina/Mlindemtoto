import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mlindemtoto/screens/devices.dart';
import 'package:mlindemtoto/screens/schedule.dart';

import '../Controllers/auth_controller.dart';
import 'resources.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
      /*  body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            ],
        ),
      )),*/
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: <Widget>[
            GridView.count(
              crossAxisCount: 2,
              primary: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(20),
              shrinkWrap: true,
              children: <Widget>[
                Material(
                  color: Colors.orange[100],
                  child: InkWell(
                    onTap: () {
                      Get.to(() => Map());
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Locate your child"),
                    ),
                  ),
                ),
                 Material(
                  color: Colors.orange[100],
                  child: InkWell(
                    onTap: () {
                      Get.to(() => Schedule());
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Schedule a visit"),
                    ),
                  ),
                ),
                   Material(
                  color: Colors.orange[100],
                  child: InkWell(
                    onTap: () {
                      Get.to(() => Devices());
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Connect your devices"),
                    ),
                  ),
                ),
                  Material(
                  color: Colors.orange[100],
                  child: InkWell(
                    onTap: () {
                      Get.to(() => Resources());
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Additional Resources", ),
                      
                    ),
                  ),
                ),
                
              ],
            )
          ]),
        ),
      ),
    );
  }
}
