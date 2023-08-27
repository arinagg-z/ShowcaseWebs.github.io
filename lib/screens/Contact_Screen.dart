import 'package:flutter/material.dart';
import 'package:portfolio/model/ResponseModel.dart';
import 'package:portfolio/utils.dart/constants.dart';
import 'package:portfolio/widgets/TextInputWidget.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController _Namecontroller = TextEditingController();

  TextEditingController _Emailcontroller = TextEditingController();

  TextEditingController _Messagecontroller = TextEditingController();

  @override
  void dispose() {
    _Namecontroller.dispose();
    _Emailcontroller.dispose();
    _Messagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact",
            style: TitleStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextInputWidget(
                    controller: _Namecontroller,
                    dimensions: 100,
                    text: "Name",
                    hinttext: "Person",
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  TextInputWidget(
                    controller: _Emailcontroller,
                    dimensions: 100,
                    text: "Email",
                    hinttext: "Person@email.com",
                    inputType: TextInputType.emailAddress,
                  ),
                ],
              ),
              TextInputWidget(
                controller: _Messagecontroller,
                dimensions: 310,
                text: "Message",
                hinttext: "Message",
                maxline: 10,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Submit(ResponseModel(
                      name: _Namecontroller.text,
                      email: _Emailcontroller.text,
                      message: _Messagecontroller.text));
                  _Namecontroller.clear();
                  _Emailcontroller.clear();
                  _Messagecontroller.clear();
                  print("Done");
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Center(child: Text("Response sent"))));
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Send",
                      style: BodyStyle3.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
