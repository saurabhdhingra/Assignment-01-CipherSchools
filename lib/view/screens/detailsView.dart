import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  Future openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: width * 0.15,
              backgroundImage: const AssetImage("profileAssets/profile.png"),
            ),
            SizedBox(height: height * 0.02),
            Text(
              "Saurabh Dhingra",
              style: TextStyle(
                  fontSize: width * 0.05, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.mail),
                SizedBox(width: width * 0.02),
                Text(
                  "saurabh20work@gmail.com",
                  style: TextStyle(fontSize: width * 0.04),
                )
              ],
            ),
            SizedBox(height: height * 0.02),
            profileLink(
              height,
              width,
              'https://www.linkedin.com/in/saurabhdhingraa/',
              "LinkedIn Profile",
              "profileAssets/linkedin.png",
            ),
            SizedBox(height: height * 0.02),
            profileLink(
              height,
              width,
              'https://www.instagram.com/captainrogers20/',
              "Instagram Portfolio",
              "profileAssets/instagram.png",
            ),
            SizedBox(height: height * 0.02),
            profileLink(
              height,
              width,
              'https://github.com/saurabhdhingra',
              "gitHub Profile",
              "profileAssets/github.png",
            ),
            SizedBox(height: height * 0.02),
            profileLink(
              height,
              width,
              'https://saurabhdhingraa.hashnode.dev',
              "HashNode Blog",
              "profileAssets/hashnode.png",
            ),
          ],
        ),
      ),
    );
  }

  Widget profileLink(
      double height, double width, String link, String label, String asset) {
    return GestureDetector(
      onTap: () async {
        openBrowserURL(url: link, inApp: true);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: height * 0.04,
              width: height * 0.04,
              child: Image.asset(asset)),
          SizedBox(width: width * 0.02),
          Text(
            label,
            style: TextStyle(fontSize: width * 0.04),
          )
        ],
      ),
    );
  }
}
