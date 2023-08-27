import 'package:flutter/material.dart';
import 'package:portfolio/screens/Blog_Screen.dart';
import 'package:portfolio/screens/Contact_Screen.dart';
import 'package:portfolio/screens/Home_Screen.dart';
import 'package:portfolio/utils.dart/constants.dart';
import 'package:portfolio/widgets/HeadlinerWidget.dart';

class ScreenLayout extends StatefulWidget {
  final int page;
  const ScreenLayout({super.key, required this.page});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int selected = 0;
  List<Widget> screens = [
    HomeScreen(),
    BlogScreen(),
    ContactScreen(),
  ];

  void changescreen(int num) {
    setState(() {
      selected = num;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    selected = widget.page;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: h * 0.1,
                child: Row(children: [
                  Container(
                    height: h * 0.07,
                    child: Column(
                      children: [
                        Flexible(child: Image.asset("assests/images/logo.png")),
                        Text(
                          "Arin Aggarwal",
                          style: HeadlineBarStyle2,
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: h * 0.05,
                    width: w * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HeadlinerWidget(
                          Tab: "Home",
                          onpress: () {
                            changescreen(0);
                          },
                        ),
                        HeadlinerWidget(
                          Tab: "I",
                        ),
                        HeadlinerWidget(
                          Tab: "Blog",
                          onpress: () {
                            changescreen(1);
                          },
                        ),
                        HeadlinerWidget(
                          Tab: "I",
                        ),
                        HeadlinerWidget(
                          Tab: "Contact",
                          onpress: () {
                            changescreen(2);
                          },
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              // Screens
              screens[selected],
            ],
          ),
        ),
      ),
    );
  }
}
