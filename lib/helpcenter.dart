import 'package:flutter/material.dart';
import 'package:resturant/bestseller.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/homescreen.dart';
import 'package:resturant/loginscreen.dart';
import 'package:resturant/newaccountscreen.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 100),
            child: Text("How Can We Help You?",
                style: TextStyle(fontSize: 15, color: AppColors.orange)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 35),
                  height: 170,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Loginscreen();
                          }));
                        },
                        child: Image.asset(
                          "assets/images/Back icon Arrow.png",
                        ),
                      ),
                      SizedBox(
                        width: 65,
                      ),
                      Text(
                        "Help Center",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
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
      padding: EdgeInsets.only(right: 20, left: 20),
      height: 630,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              FAQ(),
              ContactUs(),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/Headphones icons.png"),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Customer service",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Image.asset("assets/images/Back icon Arrow (1).png"),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset("assets/images/Global icon.png"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Website         ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 116,
                  ),
                  Image.asset("assets/images/Back icon Arrow (1).png"),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset("assets/images/WhatApp.png"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Whatsapp        ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 102,
                  ),
                  Image.asset("assets/images/Back icon Arrow (1).png"),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset("assets/images/Facebook.png"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Facebook        ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 103,
                  ),
                  Image.asset("assets/images/Back icon Arrow (1).png"),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Image.asset("assets/images/Instagram.png"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Instagram       ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 103,
                  ),
                  Image.asset("assets/images/Back icon Arrow (1).png"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class FAQ extends StatelessWidget {
  const FAQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 35, left: 10),
        child: Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
              color: AppColors.lightorange,
              borderRadius: BorderRadius.circular(25)),
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Homescreen();
                }));
              },
              child: Text(
                "FAQ",
                style: TextStyle(
                    color: AppColors.orange,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              )),
        ));
  }
}

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 35, left: 10),
        child: Container(
          height: 40,
          width: 150,
          decoration: BoxDecoration(
              color: AppColors.orange, borderRadius: BorderRadius.circular(25)),
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Homescreen();
                }));
              },
              child: Text(
                "Contact Us",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              )),
        ));
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
            Image.asset("assets/images/Headphones icon.png", height: 35),
          ],
        ),
      ),
    );
  }
}
