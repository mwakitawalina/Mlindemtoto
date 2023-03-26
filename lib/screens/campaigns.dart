import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
//import 'package:googleapis/analytics/v3.dart';

class Publiccampaigns extends StatelessWidget {
  const Publiccampaigns({super.key});

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
              Image(
                image: AssetImage("images/campaign.jpg"),
                width: Get.width,
                height: 200,
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.6),
                colorBlendMode: BlendMode.darken,
              ),
              Positioned.fill(
                  child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Public Campaigns",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
"Public campaigns aimed at ensuring the safety of children in crowded places are important in raising awareness and educating the public on the best practices for keeping children safe. Here are some examples of such campaigns, along with references:\n\n1.'Stay Close, Stay Safe' by the National Center for Missing and Exploited Children (NCMEC): This campaign aims to educate parents and caregivers on the importance of supervising children in crowded places and staying close to them. The campaign provides tips on how to keep children safe, such as having a plan in case of separation and using identification tags or wristbands. [1]\n\n2.	'Watch Your Kids Around Water'by the American Red Cross: While not specific to crowded places, this campaign emphasizes the importance of water safety for children, which is relevant in many crowded areas such as pools or beaches. The campaign provides resources on how to prevent drowning and keep children safe around water. [2]\n\n3.'Safe Kids Worldwide': This organization focuses on preventing childhood injuries, including those that can occur in crowded places. They provide resources and tips for parents and caregivers on how to keep children safe in different settings, including large crowds. [3]\n\n4.'Be Aware, Be Prepared, Be Safe' by the Centers for Disease Control and Prevention (CDC): This campaign focuses on emergency preparedness and emphasizes the importance of having a plan in place for unexpected situations, such as a child becoming separated from their caregiver in a crowded area. The campaign provides resources and tips on how to be prepared for emergencies. [4]\n\n5.'Child Safety Seat Campaign' by the National Highway Traffic Safety Administration (NHTSA): While not specific to crowded places, this campaign emphasizes the importance of using child safety seats to protect children in vehicles, which is relevant in many crowded areas such as parking lots or traffic. The campaign provides resources on how to choose and use the appropriate safety seat for a child's age and size. [5]\nReferences: \n[1] National Center for Missing and Exploited Children. (n.d.). Stay Close, Stay Safe. Retrieved from https://www.missingkids.org/footer/safety/stay-close-stay-safe \n[2] American Red Cross. (n.d.). Watch Your Kids Around Water. Retrieved from https://www.redcross.org/get-help/how-to-prepare-for-emergencies/types-of-emergencies/water-safety/watch-your-kids-around-water.html \n[3] Safe Kids Worldwide. (n.d.). Home. Retrieved from https://www.safekids.org/\n [4] Centers for Disease Control and Prevention. (2019). Be Aware, Be Prepared, Be Safe. Retrieved from https://www.cdc.gov/features/crowdsafety/index.html [5] National Highway Traffic Safety Administration. (n.d.). Child Safety Seat Campaigns. Retrieved from https://www.nhtsa.gov/equipment/car-seats-and-booster-seats#campaigns",                      style: TextStyle(fontSize: 15),
                    )),
              ],
            ),
          )),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
