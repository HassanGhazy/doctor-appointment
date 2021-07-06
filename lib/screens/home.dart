import 'package:doctor_appointment/widgets/category_widget.dart';
import 'package:doctor_appointment/widgets/listtile_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff0A3D5C),
      appBar: AppBar(
        backgroundColor: const Color(0xff0A3D5C),
        elevation: 0,
        actions: [
          Image.asset("assets/images/Repeat Grid 1.png"),
          Image.asset("assets/images/notification icon.png"),
        ],
        leading: Image.asset("assets/images/menu.png"),
      ),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: const Color(0xffeeeeee),
          border: Border.all(),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Hi, Olivia",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        width: width - 100,
                        height: 50,
                        child: TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.white)),
                            hintText: 'Search...',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xff127062),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/search icon.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("See all",
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryWidget(
                        "assets/images/dental icon.png", "Dental", 26),
                    CategoryWidget("assets/images/heart icon.png", "Heart", 18),
                    CategoryWidget("assets/images/brain icon.png", "Brain", 32),
                    CategoryWidget("assets/images/bone icon.png", "Bone", 36),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Rate",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTileWidget("assets/images/doctor img.png",
                          "Dr. Fred Mask", "Heart surgen", 4.9, 5.3),
                      ListTileWidget("assets/images/img.png", "Dr. Stella Kane",
                          "Bone Specialist", 4.7, 3.1),
                      ListTileWidget("assets/images/img bg.png",
                          "Dr. Zac Wolff", "Eyes Specialist", 4.5, 4.6),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
