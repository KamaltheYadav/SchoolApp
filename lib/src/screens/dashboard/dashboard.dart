import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project1/src/controllers/questions_controller.dart';
import 'package:project1/src/utils/custom_icons_icons.dart';
import 'package:project1/src/data/list.dart';
import 'package:flutter/material.dart';
import 'package:project1/src/screens/dashboard/main_icons.dart';
import 'package:project1/src/screens/dashboard/navigation_bar/nav_items.dart';
import 'package:project1/src/screens/dashboard/hero_text.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/screen_size.dart';
import 'package:project1/src/utils/color.dart';
import '../drawer/draw_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var height, width;
  int currentPageIndex = 0;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  QuestionController _questionController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    width = screenSize.screenWidth;
    height = screenSize.screenHeight;
    double navHeight = height * 0.25;

    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: Container(
        height: height * 0.10,
        child: Card(
          child: NavigationBar(
            destinations: [
              navigationItems(
                IconName: Iconsax.home,
                label: 'Okay',
              ),
              navigationItems(
                IconName: Iconsax.message_2,
                label: 'Message',
              ),
              navigationItems(
                IconName: Iconsax.notification,
                label: 'Notifications',
              ),
              navigationItems(
                IconName: Iconsax.user,
                label: 'Profile',
              ),
            ],
            selectedIndex: currentPageIndex,
            indicatorColor: Colors.indigo[100],
            backgroundColor: AppColors.secondary,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
          ),
        ),
      ),
      body: Container(
        color: AppColors.primary,
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              height: height * 0.25,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: navHeight * 0.25,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: InkWell(
                            onTap: () {
                              // Open the drawer when the sort icon is tapped
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            child: Icon(
                              CustomIcons.menu,
                              color: Colors.white,
                              size: navHeight * 0.1,
                            ),
                          ),
                        ),
                        Container(
                          //change here for the whole device using the height
                          height: navHeight * 0.25,
                          width: navHeight * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white54,
                            image: DecorationImage(
                              image: AssetImage("images/woman.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: navHeight * 0.01,
                      left: 30,
                      bottom: navHeight * 0.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        navText(
                            navHeight: navHeight,
                            text: 'Hello',
                            color: AppColors.secondary),
                        navText(
                            navHeight: navHeight,
                            text: 'Kamal Yadav',
                            color: Colors.indigo[100]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: buildBodyDecoration(),
              height: height * 0.65,
              width: width,
              padding: EdgeInsets.only(
                bottom: 0,
                top: 4,
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.1,
                  mainAxisSpacing: 25,
                ),
                shrinkWrap: true,
                itemCount: imgData.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      //only for the QuestionScreen
                      _questionController.reset();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => page[index],
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsetsDirectional.symmetric(
                        vertical: 8,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 1,
                            blurRadius: 6,
                          )
                        ],
                      ),
                      child: mainIcon(
                          imgData: imgData, titles: titles, index: index),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: height * 0.0,
              width: width,
            ),
          ],
        ),
      ),
      drawer: DrawBar(),
    );
  }
}
