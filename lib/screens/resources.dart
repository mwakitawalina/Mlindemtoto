import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:mlindemtoto/screens/campaigns.dart';
import 'package:mlindemtoto/screens/management.dart';
import 'package:mlindemtoto/screens/responseplan.dart';
import 'package:mlindemtoto/widgetss/dashcard.dart';
import 'package:mlindemtoto/widgetss/navigation.dart';

import '../Controllers/authcontroller_alt.dart';
import '../Utils/appconstants.dart';
import 'safetyrules.dart';

class Resources extends StatelessWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: AppDrawerWidget().getDrawer("dashboard"),
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
                        "Resources",
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
                        "Some of the resources we have\nWe are glad to have you",
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
                            "Our resources",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(height: 20),

                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Dashcard(
                                
                                title: "Safety Rules",
                                img: "images/safety.png",
                                subtitle: "Some safety tips",
                                onClick: () {
                                  Get.to(() => safetyrules());
                                }),
                            Dashcard(
                              img: "images/emergencyplan.jpg",
                              title: "Emergency response" ,
                              subtitle: "Response plan",
                              
                              onClick: () {
                                Get.to(() => Responseplan());
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Dashcard(
                                img: "images/crowd.jpg",
                                
                                title: "Crowd Management",
                                subtitle: "The strategies",
                                onClick: () {
                                  Get.to(() => managementstrategies());
                                }),
                            Dashcard(
                               
                                img: "images/campaign.jpg",
                                title: "Public campaign",
                                subtitle: "Campaigns",
                                onClick:(){
                                   Get.to(() => Publiccampaigns());

                                }
                              
                                
                                 
                                ),
                                
                          ],
                        )

                        /*  //cards row 1
                          Container(
                            child: Column(
                              children: [
                              Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    safetyrules()),
                                          );
                                        },
                                        
                                          child: Card(
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/safety.png'),
                                                  radius: 40,
                                                ),
                                                SizedBox(width: 10),
                                                Text('Safety rules'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    safetyrules()),
                                          );
                                        },
                                        
                                          child: Card(
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/emergencyplan.jpg'),
                                                  radius: 40,
                                                ),
                                                SizedBox(width: 20),
                                                Text('Emergency \n Response plan'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    
                                  ],
                                ),

                              
                                //row 2
                                 Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    safetyrules()),
                                          );
                                        },
                                        
                                          child: Card(
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/managementstrategies.jpg'),
                                                  radius: 40,
                                                ),
                                                SizedBox(width: 10),
                                                Text('Crowd management \n strategies'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    safetyrules()),
                                          );
                                        },
                                        
                                          child: Card(
                                            child: Row(
                                              children: [
                                                CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/campaign.jpg'),
                                                  radius: 40,
                                                ),
                                                SizedBox(width: 10),
                                                Text('Public campaigns'),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),*/
              ]),
                  ),
                ),
            )],
            ),
          ),
        ],
      ),
    );
  }
}



























/*class Resources extends StatefulWidget {
  const Resources({super.key});

  @override
 
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
   initState(){
    super .initState();
    Future.microtask(()  async{
      await AuthControlleralt.to.fetchResourceData();

    });
  }
  final _formKey= GlobalKey <FormBuilder>();
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawerWidget().getDrawer("resources"),
      appBar: AppBar(backgroundColor: Color.fromRGBO(64, 44, 22, 1),
      title: Text("Resources"),
      actions: [
        IconButton(onPressed: () async{
          await AuthControlleralt.to.fetchResourcesData();,
        }, icon: Icon(Icons.refresh,color: Colors.white,))
      ],),
      //body
      body: Stack(children: [
        Positioned(
          top: 20, 
          left: 0,
           right: 0, 
           bottom: 20,
            child: Container
            (width: Get.width,
            height: Get.height-90,
            child: Obx(() {
              var resources= MainController.to.resources;
            }),),)
      ]),
    );
  }
}*/