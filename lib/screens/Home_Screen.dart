import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils.dart/constants.dart';
import 'package:portfolio/widgets/Hyperlink.dart';
import 'package:portfolio/widgets/ProjectDisplay.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool change = false;
  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: 550,
          color: Colors.white,
          child:
              // Header
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "App & Web Developer",
              style: TitleStyle,
            ),
            Text(
              "Let's build amazing things together! 🤍 ",
              style: SubtitleStyle,
            ),
            Flexible(child: Image.asset("assests/images/illus4.jpg")),
          ]),
        ),
        Stack(
          children: [
            Column(
              children: [
                // body
                Container(
                  height: 600,
                  color: Colors.cyan,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 150),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hi, I'm Arin. Nice to meet you.",
                          style: BodyStyle,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Text(
                            "I’m a self-taught developer. And love to experiment with new technologies. I’m quietly confident, naturally curious, and perpetually working on improving my skills. In my spare time I like building my own products",
                            style: BodyStyle2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // project display
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Container(
                    height: 500,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "     Projects   ",
                            style: GoogleFonts.ptSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ProjectDisplay(
                              num: 0,
                              icon: "assests/images/ecom.png",
                            ),
                            ProjectDisplay(
                              num: 1,
                              icon: "assests/images/fashion.png",
                            ),
                            ProjectDisplay(
                              num: 2,
                              icon: "assests/images/spa.png",
                            ),
                            ProjectDisplay(
                              num: 3,
                              icon: "assests/images/ai.png",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //  Footer
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.cyan,
                  child: Center(
                    child: Text(
                      "Progressing through every experience, learning as I go, and ascending with each step.",
                      style: BodyStyle2.copyWith(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            // footer flat
            Positioned(
                bottom: -12,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 460),
                  height: 60,
                  width: w * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            color: Colors.black38,
                            blurRadius: 1)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Hyperlink(
                        url: "https://github.com/arinagg-z",
                        icon: "assests/images/github.png",
                      ),
                      Hyperlink(
                        url:
                            "https://www.linkedin.com/in/arin-aggarwal-818933252/",
                        icon: "assests/images/linkedin.png",
                      ),
                      Hyperlink(
                        url: "",
                        icon: "assests/images/twitter.png",
                      ),
                    ],
                  ),
                )),
            //  body float
            Positioned(
              top: 430,
              left: 340,
              child: Container(
                height: 280,
                width: w * 0.6,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1, color: Colors.black38, blurRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Programming Languages",
                          style: BodyStyle3,
                        ),
                        Text(
                          "C • HTML5 & CSS3 • Java • JavaScript • TypeScript",
                          style: BodyStyle4,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "IDEs",
                          style: BodyStyle3,
                        ),
                        Text(
                          "VS Code • IntelliJ",
                          style: BodyStyle4,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Coding Profiles",
                          style: BodyStyle3,
                        ),
                        Text(
                          "Programming Languages",
                          style: BodyStyle4,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Libraries & Frameworks",
                          style: BodyStyle3,
                        ),
                        Text(
                          "ReactJs • ExpressJs • NodeJs • Docker",
                          style: BodyStyle4,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Databases",
                          style: BodyStyle3,
                        ),
                        Text(
                          "MongoDB • MySQL • Redi",
                          style: BodyStyle4,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dev Tools",
                          style: BodyStyle3,
                        ),
                        Text(
                          "Postman • Git & GitHub • Terminal • Figma",
                          style: BodyStyle4,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
