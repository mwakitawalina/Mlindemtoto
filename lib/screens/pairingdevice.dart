import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mlindemtoto/Utils/appconstants.dart';
import 'package:mlindemtoto/screens/listdevices.dart';
import 'package:mlindemtoto/widgetss/custombutton.dart';
import 'package:url_launcher/url_launcher.dart';

class Pair extends StatelessWidget {
  const Pair({super.key, required device, required this.singleDevice});
  final String singleDevice;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConst.mainColorLight,
        title: Text(singleDevice),
      ),
      
      body: Column(
        children: <Widget>[
          Image(image: _getDeviceImage(singleDevice)),
          Padding(padding: EdgeInsets.all(20),
          child: Text("Huawei Bands will help connect you with your child for monitoring"),
          ),
          SizedBox(height: 30,),

         SizedBox(
          width: Get.width *.6,
           child: CustomButton(title: "Pair",
            onPressed: (() {
             launch("bluetooth:");
           })),
         )
        ],
        
        
        ),
    );
  }
  _getDeviceImage(singleDevice){
    switch(singleDevice){
      case "Smart watch": {
      return AssetImage("images/applewatch.png");
    }
    case "Smart Band" :{
      return AssetImage("images/Huaweiband6.jpg");
    }
    case "Microchip" :{
      return AssetImage("images/smartwatch.png");
    }
    case "HeadPhone" :{
      return AssetImage("images/sumsungwatch.jpg");
    }

    }
  }
}