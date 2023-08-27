import 'package:flutter/material.dart';
import 'package:portfolio/screens/Project_Screen.dart';

class ProjectDisplay extends StatelessWidget {
  ProjectDisplay({
    super.key,
    required this.num,
    required this.icon,
  });

  final int num;
  final String icon;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ProjectScreen(num: num)));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        height: h * 0.3,
        width: w * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Image.asset(icon),
        ),
      ),
    );
  }
}
