import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Controllers/auth_controller.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"), actions: [
        IconButton(
            onPressed: () async {
              await AuthController.to.signOut();
            },
            icon: Icon(Icons.logout))
      ]),
          body: SingleChildScrollView(
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
      )),
    );
  }
}



