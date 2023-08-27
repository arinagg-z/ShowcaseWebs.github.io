import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/model/Project_Model.dart';
import 'package:portfolio/model/ResponseModel.dart';

import '../widgets/FeedContent.dart';

void Submit(ResponseModel model) {
  ResponseList.add(model);
  print("done " + ResponseList.length.toString());
  print(ResponseList);
}

List<ResponseModel> ResponseList = [];

List<FeedContent> feedcontentlist = [
  FeedContent(mon: "Aug", date: "25", content: "Flask Essentials"),
  FeedContent(mon: "Aug", date: "26", content: "Flask Essentials"),
  FeedContent(mon: "Aug", date: "26", content: "Flask Essentials"),
  FeedContent(mon: "Aug", date: "26", content: "Flask Essentials"),
  FeedContent(mon: "Aug", date: "26", content: "Flask Essentials"),
  FeedContent(mon: "Aug", date: "26", content: "Flask Essentials"),
  FeedContent(mon: "Aug", date: "26", content: "Flask Essentials"),
  FeedContent(mon: "Aug", date: "26", content: "Flask Essentials"),
  FeedContent(mon: "Aug", date: "26", content: "Flask Essentials"),
];

TextStyle HeadlineBarStyle = GoogleFonts.ptSans(
    fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black);
TextStyle HeadlineBarStyle2 = GoogleFonts.ptSans(
    fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black);
TextStyle SubtitleStyle = GoogleFonts.ptSans(
    fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black);
TextStyle TitleStyle = GoogleFonts.ptSans(
    fontSize: 40, fontWeight: FontWeight.w800, color: Colors.black);
TextStyle BodyStyle = GoogleFonts.ptSans(
    fontSize: 34, fontWeight: FontWeight.w600, color: Colors.white);
TextStyle BodyStyle2 = GoogleFonts.ptSans(
    fontSize: 26, fontWeight: FontWeight.w400, color: Colors.white);
TextStyle BodyStyle3 = GoogleFonts.ptSans(
    fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black);
TextStyle BodyStyle4 = GoogleFonts.ptSans(fontSize: 16, color: Colors.black);

List<ProjectModel> modellist = [
  amazonclonemodel,
  fashionappmodel,
  spaappmodel,
  Chagptclonemodel,
];

final ProjectModel amazonclonemodel = ProjectModel(
    icon: "assests/images/ecom.png",
    video:
        "https://drive.google.com/file/d/1RTVkGwT2vx0kHH1kaSq6BF9sMq_TuQ2U/view?usp=sharing",
    name: "AmazonClone",
    descption:
        "Amazon's innovative project developed using Flutter, a versatile UI toolkit, delivers a seamless and dynamic shopping experience to users. With its cross-platform compatibility and engaging interface, the app provides efficient browsing, personalized recommendations, and secure transactions, redefining the way customers interact and shop within the Amazon ecosystem.",
    projectech: "Flutter , Firebase , Dart",
    gitrepo: "https://github.com/arinagg-z/amazonclone");
final ProjectModel fashionappmodel = ProjectModel(
    icon: "assests/images/fashion.png",
    video:
        'https://drive.google.com/file/d/1R2KuNbG4gpaTsQz6N9GxLYl16CB25KTa/view?usp=sharing',
    name: "FashionApp - Ui",
    descption:
        "Introducing our sleek fashion app UI, where style meets simplicity. Navigate effortlessly through curated collections, discover the latest trends, and personalize your wardrobe. With a clean and intuitive design, browsing becomes a pleasure. From elegant dresses to casual attire, explore an array of options. Seamlessly add favorites to your wishlist and enjoy a hassle-free shopping experience. Elevate your fashion journey with our app's modern, user-friendly interface, making staying trendy easier than ever.",
    projectech: "Flutter ,  Dart , Figma",
    gitrepo: "https://github.com/arinagg-z/FashionApp");
final ProjectModel spaappmodel = ProjectModel(
    icon: "assests/images/spa.png",
    video:
        'https://drive.google.com/file/d/1RPQN0XGctXc7fmB0aE2wfaf5DnnAH3e2/view?usp=sharing',
    name: "SpaApp - Ui",
    descption:
        "Embark on a journey of tranquility with our Spa app's soothing UI. Seamlessly navigate through a serene blend of soft colors and intuitive icons that guide you to your desired relaxation experience. From selecting rejuvenating treatments to booking your oasis of calm, our app's design ensures a seamless journey of pure indulgence. Elevate your senses and embrace the harmony of a thoughtfully crafted spa escape—all at the touch of your fingertips. Your pathway to ultimate relaxation starts here.",
    projectech: "Flutter ,  Dart  ",
    gitrepo: "https://github.com/arinagg-z/SpaApp");
final ProjectModel Chagptclonemodel = ProjectModel(
  icon: "assests/images/ai.png",
  video:
      'https://drive.google.com/file/d/1RONmAyIyd4TktmuIF-QwDjoZhb5aFYyI/view?usp=sharing',
  name: "ChatGpt",
  descption:
      "The ChatGPTClone is an advanced AI conversational model designed to facilitate interactive and dynamic communication. With its intuitive interface, it seamlessly engages users in informative discussions and creative exchanges. Combining cutting-edge language processing, real-time learning, and a user-friendly design, ChatGPTClone offers a versatile solution for various professional, educational, and entertainment contexts, making interactions more productive and engaging.",
  projectech: "Flutter ,  Dart , ApiHandling",
  gitrepo: "https://github.com/arinagg-z/ChatgptClone",
);
