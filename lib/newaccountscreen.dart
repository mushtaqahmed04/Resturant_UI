import 'package:flutter/material.dart';
import 'package:resturant/bestseller.dart';
import 'package:resturant/constant.dart';
import 'package:resturant/helpcenter.dart';
import 'package:resturant/homescreen.dart';
import 'package:resturant/loginscreen.dart';

class Newaccountscreen extends StatelessWidget {
  const Newaccountscreen({super.key});

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
                            return Loginscreen();
                          }));
                        },
                        child: InkWell(
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
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      Text(
                        "New Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
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
      padding: EdgeInsets.only(right: 40, left: 40),
      height: 630,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 23,
          ),
          Text(
            "Full name",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          TextField1(),
          SizedBox(
            height: 28,
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                "Password",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          TextField2(),
          SizedBox(
            height: 28,
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                "Email",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          TextField3(),
          SizedBox(
            height: 28,
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                "Mobile Number",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          TextField4(),
          SizedBox(
            height: 28,
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                "Date of birth",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          TextField5(),
          SizedBox(
            height: 15,
          ),
          Center(
              child: Text("By continuing you agree to",
                  style: TextStyle(fontSize: 12))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Terms of Use  ",
                  style: TextStyle(color: AppColors.orange, fontSize: 12,fontWeight: FontWeight.bold)),
              Text("and", style: TextStyle(fontSize: 12, )),
              Text("  Privacy Policy",
                  style: TextStyle(color: AppColors.orange, fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          Center(child: Logintextbutton()),
          Center(
              child: Text("or sign up with", style: TextStyle(fontSize: 12))),
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
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?", style: TextStyle(fontSize: 12)),
              Text(
                " Log In",
                style: TextStyle(color: AppColors.orange, fontSize: 12,fontWeight: FontWeight.bold),
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
            borderSide: BorderSide.none
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColors.lightyellow)
              ),
          
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
            padding: const EdgeInsets.only(left: 250, top: 10),
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

class TextField3 extends StatelessWidget {
  const TextField3({super.key});

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

class TextField4 extends StatelessWidget {
  const TextField4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextField(
        cursorColor: AppColors.orange,
        decoration: InputDecoration(
          hintText: "+ 123 456 789",
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

class TextField5 extends StatelessWidget {
  const TextField5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextField(
        cursorColor: AppColors.orange,
        decoration: InputDecoration(
          hintText: "    DD / MM / YYY ",
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

class Logintextbutton extends StatelessWidget {
  const Logintextbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 45,
          width: 180,
          decoration: BoxDecoration(
              color: AppColors.orange, borderRadius: BorderRadius.circular(25)),
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Homescreen();
                }));
              },
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Homescreen();
                  }));
              },
              child: Image.asset("assets/images/Home Icon.png", height: 25)),
            Image.asset("assets/images/fav.png", height: 25),
            InkWell(
              onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Bestseller();
                          }));
              },
              child: Image.asset("assets/images/Heart Icon.png", height: 25)),
            Image.asset("assets/images/bot-list.png", height: 30),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Newaccountscreen();
                  }));
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HelpCenter();
                    }));
                  },
                  child: Image.asset("assets/images/Headphones icon.png",
                      height: 35),
                )),
          ],
        ),
      ),
    );
  }
}
