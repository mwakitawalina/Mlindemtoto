import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mlindemtoto/Utils/appconstants.dart';

class realtime extends StatelessWidget {
  const realtime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConst.mainColor,
        title: Text("data"),
      ),
    );
  }
}