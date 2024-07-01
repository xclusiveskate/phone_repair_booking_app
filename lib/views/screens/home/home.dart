import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/constants/sizes.dart';
import 'package:repair_app/extensions/int_extension.dart';
import 'package:repair_app/extensions/string_extension.dart';
import 'package:repair_app/models/drawer_menu_model.dart';
import 'package:repair_app/models/service_model.dart';
import 'package:repair_app/views/appstyles/styles.dart';
import 'package:repair_app/views/screens/home/carousel_demo.dart';
import 'package:repair_app/views/widgets/button.dart';
import 'package:repair_app/views/widgets/card.dart';

class HomePage extends StatefulWidget {
  static const id = "home";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String name = "Ajao Wickson";
  String email = "ajaowickson@gmail.com";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
          backgroundColor: AppColors.whiteColor,
          child: Column(
            children: [
              drawerHeader(),
              drawerList(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomElevatedButton(
                  child: Text("Log out"),
                  onPressed: () {
                    //log user out, clear user data from storage and route to sign in page
                  },
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 6.0),
          child: Column(
            children: [
              Row(
                children: [
                  //on click, show drawer
                  IconButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.primaryColor),
                          shape: MaterialStateProperty.all(
                              rectangleBorder(radius: 30))),
                      onPressed: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                      icon: Icon(Icons.apps_sharp)),
                  Spacer(),
                  //on click, go to notifications page
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.notification_add_outlined,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
              12.height,
              // carousel slider

              CarouselDemo(),
              //card for services
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Care to Know About Our Services?",
                  style: appTextStyle(
                      fontSize: 18, color: AppColors.blackColor, weight: fBold),
                ),
              ),
              12.height,
              Text(
                "Discover our array of exceptional services designed to revitalize your devices. From screen enchantments to battery reinvigoration, our skilled artisans possess the expertise to transcend your expectations.",
                style: appTextStyle(
                    fontSize: 15, color: AppColors.textColor, weight: f400),
              ),
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: serviceItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 0.7,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0),
                itemBuilder: (context, index) {
                  final item = serviceItems[index];
                  return AppCard(
                    radius: br10,
                    cardColor: AppColors.backgroundColor2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SvgPicture.asset(item.image),
                          4.width,
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  item.title,
                                  style: appTextStyle(
                                      fontSize: 14,
                                      color: AppColors.blackColor,
                                      weight: fBold),
                                ),
                                Text(item.content,
                                    softWrap: true,
                                    style: appTextStyle(
                                        fontSize: 10,
                                        color: AppColors.blackColor,
                                        weight: f400)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    cardHeight: 30,
                    cardWidth: 210,
                  );
                },
              ),
              14.height,
              // Align(
              //     alignment: Alignment.centerLeft,
              //     child: Text("Book and Appointment",
              //         style: appTextStyle(
              //             fontSize: 16,
              //             color: AppColors.blackColor,
              //             weight: f400))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "Experience the convenience of our services by booking an appointment today. Secure your spot and let our skilled technicians take care of your device. Don't wait!!",
                      style: appTextStyle(
                          fontSize: 12,
                          color: AppColors.blackColor,
                          weight: f400))),
              12.height,
              Row(
                children: [
                  Expanded(
                      child: CustomElevatedButton(
                    radius: br25,
                    backgroundColor: AppColors.primaryColor,
                    child: Text("Book an Appointment"),
                    onPressed: () {},
                  )),
                  4.width,
                  Expanded(
                      child: CustomElevatedButton(
                    radius: br25,
                    backgroundColor: AppColors.backgroundColor2,
                    child: Text("Chat With an Agent"),
                    onPressed: () {},
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerHeader() {
    return Container(
      width: double.infinity,
      color: AppColors.backgroundColor,
      child: DrawerHeader(
          child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            child: SvgPicture.asset('placeholder'.svgImage),
          ),
          Text(name,
              style: appTextStyle(fontSize: 20, color: AppColors.blackColor)),
          Text(email,
              style: appTextStyle(fontSize: 16, color: AppColors.blueColor)),
        ],
      )),
    );
  }

  drawerList() {
    return ListView.builder(
      itemCount: drawerItems.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = drawerItems[index];
        return InkWell(
          onTap: () {
            item.function(context);
            currentIndex = index;
          },
          child: Container(
            height: 50,
            color: currentIndex == index ? AppColors.primaryColor : null,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    child: Icon(
                  item.icon,
                  size: 20,
                  color: Colors.blue,
                )),
                Expanded(
                    flex: 4,
                    child: Text(
                      item.title,
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ))
              ],
            ),
          ),
        );
      },
    );
  }
}
