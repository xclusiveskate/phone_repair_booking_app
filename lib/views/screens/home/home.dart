import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_app/constants/colors.dart';
import 'package:repair_app/extensions/string_extension.dart';
import 'package:repair_app/models/drawer_menu_model.dart';
import 'package:repair_app/views/appstyles/styles.dart';
import 'package:repair_app/views/widgets/button.dart';

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
                child: AppElevatedButton(
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
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = items[index];
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
