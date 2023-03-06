
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:googleapis/batch/v1.dart';
//import 'package:googleapis/sheets/v4.dart';

class safetyrules extends StatelessWidget {
  const safetyrules({super.key});

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
                  Image(image:AssetImage("images/resources.jpg"),
                    width: Get.width,
                    fit: BoxFit.cover,
                    height: 200,
                    color: Colors.black.withOpacity(0.6),
                    colorBlendMode: BlendMode.darken,
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Safety rules',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Before going to a crowded place with your child, use simple language to make her understand that she should always stay close to you. \n\nMake her aware of the fact that if she wanders away from you, it will be very difficult for both of you to find each other.Always hold your child\'s hand in crowded\n When moving along with the crowd during occasions such as a temple festival, it is prudent to carry him in your arms or on your shoulders (would also give him a better view!).\n\n During times like being late for an event, you may tend to walk faster. And, being unable to keep pace with you, your child can get left behind and easily lose his way. So, never let go of his hand.If your child is old enough, then discuss with her and agree upon a prominent spot where she should come and wait for you, in case she gets separated.\n\n Make sure that the meeting point is easy for her to see and reach. When you find that your child is missing, immediately go to the meeting point, so that she doesnot need to wait there for long.Teach your child to stay away from strangers.\n\n Tutor her/him as to whom she should ask for help in case she wanders away from you. Tell her that in such situations, it is safe to seek help from a security guard, a policeman, or any other parent with children. Make her learn your name and phone number, so that she/he can tell this information to the person she is asking for help.\n\n You can even place a card with your name and contact number in her pocket. Teach your child to stay away from people who are alone, both men and women, who may offer her sweets, toys, etc.\n\nCrowded places also aid the spread of infections. Avoid taking your child into a crowd if possible; else, ensure proper immunization and be prepared for any sudden illness. As he/she grows older, educate him on how to handle stressful situations. Teaching your child to take care of himself/herself will be the best gift you can give him. \n\n\n This resource was obtained from https://www.parentcircle.com/safety-rules-for-kids-in-crowded-public-places/article',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                              ]),
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        )
         
         ;
  }
}


   /* body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image:AssetImage("images/resources.jpg"),
                width: Get.width,
                height: 150,
                color: Colors.black.withOpacity(0.6),
                colorBlendMode: BlendMode.darken,
              ),
              
              SizedBox(height: 20),
              Text(
                'This is some text below the image',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),*/
        

       /* body: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
          children: [
            Stack(
              children: [
                Image(image: AssetImage("images/resources.jpg"),
                width: Get.width,
                height: 250,
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.8),
                colorBlendMode: BlendMode.darken,
                ),
                SizedBox(height: 10,),
                Positioned(
                  child: 
                Text("Safety rules",
                 style: TextStyle(fontSize: 20, 
                 fontWeight: FontWeight.bold, 
                 color: Colors.white
                 ),
                 ),
                 bottom: 120,
                 right: 250,
                 ),
                 SizedBox(height: 70,),
                 
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("rules")
                  ],)

                // Positioned(child: Text("data", ))
                
              ],
              
            ),
          ],
        ),*/
       