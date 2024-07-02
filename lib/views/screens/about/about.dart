import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/extensions/int_extension.dart';
import 'package:repair_app/extensions/string_extension.dart';
import 'package:repair_app/views/appstyles/styles.dart';

class AboutScreen extends StatefulWidget {
  static const id = '/about';
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  List<SocialHandles> details = [
    SocialHandles(
        title: "31 Redwood Street Abuja Nigeria", image: "location".svgImage),
    SocialHandles(title: "+234-972-647-1873", image: "call".svgImage),
    SocialHandles(title: "info@techfix.com", image: "mail".svgImage),
    SocialHandles(title: "@techfix", image: "twitter".svgImage),
    SocialHandles(title: "@techfix", image: "instagram".svgImage),
    SocialHandles(title: "@techfix", image: "facebook".svgImage),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          "About Us",
          style: appTextStyle(
              fontSize: 18, color: AppColors.blackColor, weight: fBold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.justify,
              "We are a team of passionate tech enthusiasts dedicated to providing top-notch repair solutions. With years of experience and a commitment to customer satisfaction, we strive to deliver exceptional service and bring your devices back to life. Trust our expertise and let us handle your tech repair needs with care and precision.",
              style: appTextStyle(
                  fontSize: 14, color: AppColors.textColor, weight: f400),
            ),
            ListView.builder(
                itemCount: details.length,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = details[index];
                  return ListTile(
                    leading: SizedBox(
                      height: 30,
                      width: 30,
                      child: SvgPicture.asset(
                        item.image,
                      ),
                    ),
                    title: Text(item.title),
                  );
                }),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("copyright".svgImage),
                5.width,
                Text("2023 copyright"),
                TextButton(onPressed: () {}, child: Text("techfix.com"))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SocialHandles {
  final String title;
  final String image;
  SocialHandles({
    required this.title,
    required this.image,
  });
}
