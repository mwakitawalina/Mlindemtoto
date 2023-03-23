import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:mlindemtoto/Utils/appconstants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgetss/custombutton.dart';



class realtime extends StatelessWidget {
  final Url = 'https://play.google.com/store/apps/details?id=com.google.android.apps.kids.familylink&hl=en&gl=US ';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConst.mainColorLight,
        title: Text("Launching"),
      ),
      
      body: Center(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("images/safety.png")),
            Padding(padding: EdgeInsets.all(20),
            
            child: Center(
              
              child: Padding(
                padding: EdgeInsets.only(right: 10, left:40),
                child: Text("We have linked with Google Family \nGiving you an awesome experience of \nGoogle Family product where you'll have \nlocation sharing availability with your \nchild's device\n\nClick the button to Install", 
                style:TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                  
                )),
              ),
            ),
            ),
            SizedBox(height: 20,),

           SizedBox(
            width: Get.width *.6,
             child: CustomButton(title: "Install Google Family",
             onPressed: () async {
                String url = "https://play.google.com/store/apps/details?id=com.google.android.apps.kids.familylink&hl=en&gl=US ";
                var urllaunchable = await canLaunchUrl(
                    Uri.parse(url)); //canLaunch is from url_launcher package
                if (urllaunchable) {
                  await launchUrl(Uri.parse(
                      url)); //launch is from url_launcher package to launch URL
                }
              },
          
          
          ),
    )]),
      ));
  }
}
  /*class realtime extends StatelessWidget {
          final Url = 'https://www.google.co.ke/maps';

  const realtime({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      body: Center(
        child:Text('Click on the button below to be connected to Google Family App.\n, You will be able to access all the amazing features and benefits of Google Family', 
        style: TextStyle(
          color: Colors.black12,
        ),
        ),
        

        /*children: [
          [ElevatedButton(
            onPressed: () async {
              String url = "https://www.google.co.ke/maps";
              var urllaunchable = await canLaunchUrl(
                  Uri.parse(url)); //canLaunch is from url_launcher package
              if (urllaunchable) {
                await launchUrl(Uri.parse(
                    url)); //launch is from url_launcher package to launch URL
              }
            },
            child: Text('Launch map'),
          ),
        ],
    ]*/
    ));
    
  }
    
  }*/