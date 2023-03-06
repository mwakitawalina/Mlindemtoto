//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashcard extends StatelessWidget {
  const Dashcard(
      {Key? key,
      required this.onClick,
      required this.img,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final VoidCallback onClick;
  final String img, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Stack(
        children: [
          Container(
            width: Get.width * .4,
            height: Get.height * .32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.all(12),
            width: Get.width * .4,
            height: Get.height * .32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(.4)),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70),
              ),
            ],
            
            ),
            
          )

        ],
        

      ),
      
    );
  }
} 

/*import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Dashcard extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  final onClick;

  const Dashcard({
    Key? key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onClick,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(img),
            ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            ),
          ],
        ),
      ),
    );
  }
}*/

/*void launchCalendarURL() async {
  final url = Uri.parse('https://calendar.google.com/'); // Replace with your calendar URL
  if (await canLaunchUrl(url.toString())) {
    await launchUrl(url.toString());
  } else {
    throw 'Could not launch $url';
  }
}*/
