import 'package:flutter/material.dart';
import 'package:resturant/bestseller.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/helpcenter.dart';
import 'package:resturant/newaccountscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 55),
                      child: Row(
                        children: [
                          Image.asset("assets/images/Frame 62.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset("assets/images/Frame 61.png"),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset("assets/images/Frame 60.png"),
                          SizedBox(
                            width: 8,
                          ),
                          Image.asset("assets/images/Frame 59.png"),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                          ),
                          child: Text(
                            "Good Morning",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 57, bottom: 10),
                          child: Text(
                            "Rise And Shine! It's Breakfast Time",
                            style: TextStyle(
                                color: AppColors.orange,
                                fontSize: 12.5,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                WhiteBox(),
              ],
            ),
          ),
          BottomSheet(),
        ],
      ),
    );
  }
}

// White Box decoration design

class WhiteBox extends StatelessWidget {
  const WhiteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18, right: 25, left: 25),
      width: double.infinity,
      height: 630,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/Bot-menu.png"),
                  Image.asset("assets/images/Bot-menu (1).png"),
                  Image.asset("assets/images/Bot-menu (2).png"),
                  Image.asset("assets/images/Bot-menu (3).png"),
                  Image.asset("assets/images/Bot-menu (4).png"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Container(
                  height: 1,
                  color: AppColors.orange,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Text(
                      "Best Seller",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Bestseller();
                        }));
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: AppColors.orange, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset("assets/images/Front icon Arrow.png"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Image.asset("assets/images/Rectangle 133.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 35),
                        child: Image.asset("assets/images/Frame 64.png"),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset("assets/images/Rectangle 134.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 35),
                        child: Image.asset("assets/images/Frame 65.png"),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset("assets/images/Rectangle 135.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 35),
                        child: Image.asset("assets/images/Frame 66.png"),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset("assets/images/Rectangle 136.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 35),
                        child: Image.asset("assets/images/Frame 67.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Stack(
            children: [
              Image.asset("assets/images/Frame 71.png"),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Experience our \n delicious new dish",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 15),
                child: Text(
                  "30% OFF",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Center(child: Image.asset("assets/images/Group 187.png")),
          SizedBox(
            height: 7,
          ),
          Text(
            "Recommend",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: 130,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/Rectangle 137.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 50),
                        child:
                            Image.asset("assets/images/Favorites-Orange.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Image.asset("assets/images/Frame 49.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100, left: 110),
                        child: Image.asset("assets/images/Frame 68.png"),
                      ),
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 130,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/Rectangle 128.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 50),
                        child:
                            Image.asset("assets/images/Favorites-Orange.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Image.asset("assets/images/Frame 49.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100, left: 110),
                        child: Image.asset("assets/images/Frame 65.png"),
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  const BottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 750),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Homescreen();
                  }));
                },
                child: Image.asset("assets/images/Home Icon.png", height: 25)),
            Image.asset("assets/images/fav.png", height: 25),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Bestseller();
                  }));
                },
                child: Image.asset("assets/images/Heart Icon.png", height: 25)),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Newaccountscreen();
                  }));
                },
                child: Image.asset("assets/images/bot-list.png", height: 30)),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HelpCenter();
                  }));
                },
                child: Image.asset("assets/images/Headphones icon.png",
                    height: 35)),
          ],
        ),
      ),
    );
  }
}
