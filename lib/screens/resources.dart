import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:mlindemtoto/widgetss/navigation.dart';

import '../Controllers/authcontroller_alt.dart';
class Resources extends StatelessWidget {
  const Resources({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
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