import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mlindemtoto/Utils/appconstants.dart';
import 'package:mlindemtoto/screens/devices.dart';
import 'package:mlindemtoto/screens/realtime.dart';
import 'package:mlindemtoto/screens/resources.dart';
import 'package:mlindemtoto/screens/schedule.dart';

import '../widgetss/dashcard.dart';
import '../widgetss/navigation.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawerWidget().getDrawer("dashboard"),
      extendBodyBehindAppBar: true,
      appBar:
          AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            )),
      ]),
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            color: AppConst.mainColor,
          
          ),
          Container(
            width: Get.width,
            height: Get.height,
            decoration: BoxDecoration(color: Colors.black.withOpacity(.275)),
          ),
          Container(
            width: Get.width,
            height: Get.height,
            child: Column(
              children: [
                //adding top space
                SizedBox(
                  height: 20,
                ),
                //Top navigation
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                //add space
                SizedBox(
                  height: Get.height * .15,
                ),
                //adding Title
                Container(
                  width: Get.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Mlinde mtoto",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      //Custom divider
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        width: 60,
                        height: 1,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Welcome to MlindeMtoto\nWe are glad to have you",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  width: Get.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 10),
                        Text(
                          "Actions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Dashcard(
                                
                                title: "Schedule",
                                img: "images/calendar.jpg",
                                subtitle: "Schedule your next visit",
                                onClick: () {
                                  Get.to(() => DynamicEvent());
                                }),
                            Dashcard(
                              img: "images/resources.jpg",
                              title: "Civic education" , 
                              subtitle: "Civic education resources",
                              
                              onClick: () {
                                Get.to(() => Resources());
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Dashcard(
                                img: "images/smartwatch.png",
                                
                                title: "Devices",
                                subtitle: "Connect your devices",
                                onClick: () {
                                  Get.to(() => Devices());
                                }),
                            Dashcard(
                                img: "images/map.jpg",
                                title: "Location",
                                subtitle: "Locate your child",
                               
                                
                                onClick: () {
                                  Get.to(() => realtime());
                                  //lauchMaps();
                                }
                                ),
                          ],
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}



























/*import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mlindemtoto/screens/devices.dart';

import 'package:mlindemtoto/screens/realtime.dart';
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
            Expanded(
              child: GridView.count(
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
                        Get.to(() => Schedule());
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/profile2.png", ),)),
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
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/profile2.png", ),)),
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
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/profile1.png", ),)),
                        child: Text("Additional Resources", ),
                        
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
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/profile1.png", ),)),
                        child: Text("Additional Resources", ),
                        
                      ),
                    ),
                  ),
                  
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}*/
