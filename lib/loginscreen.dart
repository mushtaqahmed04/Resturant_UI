import 'package:flutter/material.dart';
import 'package:resturant/bestseller.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/helpcenter.dart';
import 'package:resturant/homescreen.dart';
import 'package:resturant/newaccountscreen.dart';
import 'package:resturant/signupscreen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellow,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15),
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
                            return Signupscreen();
                          }));
                        },
                        child: Image.asset(
                          "assets/images/Back icon Arrow.png",
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )
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
      padding: EdgeInsets.only(top: 18, right: 40, left: 40),
      height: 630,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Welcome",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut. ",
            style: TextStyle(height: 1.2),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Email or Mobile Number",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          TextField1(),
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Password",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          TextField2(),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 170),
              child: Text(
                "Forget Password",
                style: TextStyle(
                    color: AppColors.orange, fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: 40,
          ),
          Center(child: Logintextbutton()),
          Center(child: Text("or sign up with")),
          Container(
            padding: EdgeInsets.only(
              top: 2,
              left: 70,
              right: 70,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/Google Icon.png"),
                Image.asset("assets/images/Facebook Icon.png"),
                Image.asset("assets/images/Fingerprint Icon.png"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              Text(
                " Sign Up",
                style: TextStyle(
                  color: AppColors.orange,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class TextField1 extends StatelessWidget {
  const TextField1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextField(
        cursorColor: AppColors.orange,
        decoration: InputDecoration(
          hintText: "example@example.com",
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColors.lightyellow)),
          fillColor: AppColors.lightyellow,
          filled: true,
        ),
      ),
    );
  }
}

class TextField2 extends StatelessWidget {
  const TextField2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Stack(
        children: [
          TextField(
            cursorColor: AppColors.orange,
            decoration: InputDecoration(
              hintText: "***************",
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: AppColors.lightyellow)),
              fillColor: AppColors.lightyellow,
              filled: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 245, top: 12),
            child: Container(
                height: 20,
                width: 20,
                child: Image.asset("assets/images/Show Off.png")),
          )
        ],
      ),
    );
  }
}

class Logintextbutton extends StatelessWidget {
  const Logintextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 40,
          width: 180,
          decoration: BoxDecoration(
              color: AppColors.orange, borderRadius: BorderRadius.circular(20)),
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Newaccountscreen();
                }));
              },
              child: Text(
                "Log In",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
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
            Image.asset("assets/images/bot-list.png", height: 30),
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
