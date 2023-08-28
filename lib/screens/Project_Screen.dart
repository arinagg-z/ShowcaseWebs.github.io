import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Layout/Screen_Layout.dart';
import 'package:portfolio/model/Project_Model.dart';
import 'package:portfolio/utils.dart/constants.dart';
import 'package:portfolio/widgets/HeadlinerWidget.dart';
import 'package:portfolio/widgets/Hyperlink.dart';
import 'package:portfolio/widgets/VideoPlayer.dart';

class ProjectScreen extends StatefulWidget {
  final int num;
  const ProjectScreen({required this.num});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  int selected = 0;
  ProjectModel model = modellist[0];

  @override
  void initState() {
    selected = widget.num;
    model = modellist[(selected % 4)];
    super.initState();
  }

  fetchmodel(int nums) {
    model = modellist[(nums % 4)];
  }

  void changescreen(int num) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => ScreenLayout(page: num)));
  }

  @override
  Widget build(BuildContext context) {
    fetchvideo(ProjectModel model) {
      return videoplayer(videourl: model.video, icon: model.icon);
    }

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: h,
        width: w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: h * 0.1,
                child: Row(children: [
                  SizedBox(
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
                  const Spacer(),
                  SizedBox(
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
              SizedBox(
                height: h * 0.9,
                width: w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                if (selected == 0) {
                                  selected = modellist.length;
                                } else {
                                  selected--;
                                }

                                fetchmodel(selected);
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProjectScreen(num: selected)));
                              },
                              icon: const Icon(Icons.arrow_back_ios)),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      model.name,
                                      style: GoogleFonts.ptSans(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Text(
                                        model.descption,
                                        style: GoogleFonts.ptSans(
                                            fontSize: 18,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Project Tech",
                                      style: GoogleFonts.ptSans(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      model.projectech,
                                      style: GoogleFonts.ptSans(
                                          fontSize: 18,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        Hyperlink(
                                            icon: 'assests/images/github.png',
                                            url: model.gitrepo),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Hyperlink(
                                          url:
                                              "https://www.linkedin.com/in/arin-aggarwal-818933252/",
                                          icon: "assests/images/linkedin.png",
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Hyperlink(
                                          url: "https://twitter.com/Arin_Agg",
                                          icon: "assests/images/twitter.png",
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                        height: h * 0.83,
                                        width: w * 0.2,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                        ),
                                        child: fetchvideo(model))
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                if (selected == modellist.length) {
                                  selected = 0;
                                } else {
                                  selected++;
                                }

                                fetchmodel(selected);
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProjectScreen(num: selected)));
                              },
                              icon: const Icon(Icons.arrow_forward_ios)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
