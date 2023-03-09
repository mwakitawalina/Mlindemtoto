import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mlindemtoto/Utils/appconstants.dart';
import 'package:url_launcher/url_launcher.dart';

class realtime extends StatelessWidget {
          final Url = 'https://www.google.co.ke/maps';

  const realtime({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  

    return Center(
        
        child: ElevatedButton(
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
    );
    
  }
    
  }
