import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project1/main.dart';
import 'package:project1/src/controllers/questions_controller.dart';
import 'package:project1/src/screens/dashboard/widgets/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:project1/src/screens/dashboard/navigation_bar/nav_items.dart';
import 'package:project1/src/screens/dashboard/widgets/messages_widget.dart';
import 'package:project1/src/screens/dashboard/widgets/notification_widgets.dart';
import 'package:project1/src/screens/dashboard/widgets/profile_widget.dart';
import 'package:project1/src/utils/screen_size.dart';
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

  void setCurrentPageIndex(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

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
            indicatorColor: Colors.indigo.shade400,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
          ),
        ),
      ),
      body: currentPageIndex == 0 // Check if the selected index is for Home
          ? HomeWidget(
              height: height,
              width: width,
              navHeight: navHeight,
              scaffoldKey: _scaffoldKey,
              questionController: _questionController,
              setCurrentPageIndex: setCurrentPageIndex,
            )
          : currentPageIndex == 1 // Check if the selected index is for Message
              ? MessageWidget()
              : currentPageIndex ==
                      2 // Check if the selected index is for Message
                  ? NotificationWidget()
                  : currentPageIndex ==
                          3 // Check if the selected index is for Message
                      ? ProfileWidget()
                      : Container(),
      drawer: DrawBar(
        onDarkModeChanged: (bool isDarkMode) {
          setState(() {
            // Update the dark mode state and theme mode
            MyApp.of(context).updateDarkMode(isDarkMode);
          });
        },
      ),
    );
  }
}
