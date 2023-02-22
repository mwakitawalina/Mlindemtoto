import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mlindemtoto/Utils/appconstants.dart';
import 'package:mlindemtoto/screens/pairingdevice.dart';

class listdevices extends StatelessWidget {
   listdevices({Key? key, required this.device}) : super(key: key);
   final String device;
  List listdevice = [
    "Smart watch",
    "Smart Band",
    "Microchip",
    "HeadPhone",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppConst.mainColor,
         title: Text("All Devices")),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 205, 211, 239)),
                itemBuilder: (context, index) {
                  var singleDevice= listdevice[index];
                  return ListTile(
                    title: Text("${singleDevice}"),
                    onTap: () => Get.to(() => Pair(device:  singleDevice, singleDevice: '',)),
                  );
                },
                itemCount: listdevice.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
