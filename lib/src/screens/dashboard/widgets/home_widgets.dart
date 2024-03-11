import 'package:flutter/material.dart';
import 'package:project1/src/controllers/questions_controller.dart';
import 'package:project1/src/data/list.dart';
import 'package:project1/src/data/questions.dart';
import 'package:project1/src/screens/dashboard/hero_text.dart';
import 'package:project1/src/screens/dashboard/main_icons.dart';
import 'package:project1/src/utils/build_body_decoration.dart';
import 'package:project1/src/utils/custom_icons_icons.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
    required this.height,
    required this.width,
    required this.navHeight,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required QuestionController questionController,
    required this.setCurrentPageIndex,
  })  : _scaffoldKey = scaffoldKey,
        _questionController = questionController;

  final height;
  final width;
  final double navHeight;
  final GlobalKey<ScaffoldState> _scaffoldKey;
  final QuestionController _questionController;
  final Function(int) setCurrentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
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
                        child: InkWell(
                          onTap: () {
                            //here want to change the value of the currentPageIndex
                            setCurrentPageIndex(3);
                          },
                          child: Container(
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
                        ),
                        //change here for the whole device using the height
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
                          text: 'Namaste',
                          color: Theme.of(context).colorScheme.secondary),
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
            decoration: buildBodyDecoration(context),
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
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(20),
                    //   color: Colors.white,
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.black26,
                    //       spreadRadius: 1,
                    //       blurRadius: 6,
                    //     )
                    //   ],
                    // ),
                    // child: DashboardCard(
                    //   name: '',
                    //   imgpath: '',
                    // ),
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
    );
  }
}
